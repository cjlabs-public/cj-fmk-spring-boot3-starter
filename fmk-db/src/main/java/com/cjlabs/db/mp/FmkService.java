package com.cjlabs.db.mp;

import com.cjlabs.core.collection.FmkCollectionUtil;
import com.cjlabs.core.time.FmkInstantUtil;
import com.cjlabs.core.types.longs.FmkUserId;
import com.cjlabs.core.types.strings.FmkTraceId;
import com.cjlabs.db.datasource.FmkTransactionTemplateUtil;
import com.cjlabs.db.domain.FmkBaseEntity;
import com.cjlabs.db.domain.FmkOrderItem;
import com.cjlabs.db.enums.BatchOperationTypeEnum;
import com.cjlabs.db.enums.DbAggregateEnum;
import com.cjlabs.db.enums.DbFieldNameEnum;
import com.cjlabs.db.util.IPageUtil;
import com.cjlabs.domain.enums.NormalEnum;
import com.cjlabs.web.json.FmkJacksonUtil;
import com.cjlabs.web.threadlocal.FmkContextUtil;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import lombok.Getter;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.ibatis.session.ExecutorType;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.math.BigDecimal;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * 基础Service实现类
 */
@Slf4j
@Getter
@Setter
public abstract class FmkService<M extends BaseMapper<T>, T extends FmkBaseEntity> {
    public static final int DEFAULT_QUERY_LIMIT = 1000;
    public static final int DEFAULT_BATCH_SIZE = 1000;

    @Autowired
    protected SqlSessionFactory sqlSessionFactory;

    @Autowired
    protected FmkTransactionTemplateUtil fmkTransactionTemplateUtil;

    private final M baseMapper;  // ← 保留 final

    @Autowired
    @SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
    protected FmkService(M mapper) {
        this.baseMapper = mapper;
    }

    protected abstract Class<T> getEntityClass();

    // 获取实体类的 Class（需要通过反射或其他方式）

    /**
     * 获取Mapper类型
     */
    @SuppressWarnings("unchecked")
    protected Class<M> getMapperClass() {
        try {
            ParameterizedType parameterizedType = (ParameterizedType) getClass().getGenericSuperclass();
            return (Class<M>) parameterizedType.getActualTypeArguments()[0];
        } catch (Exception e) {
            log.warn("Cannot determine mapper class through reflection, using baseMapper class");
            return (Class<M>) this.baseMapper.getClass().getInterfaces()[0];
        }
    }

    // ============ 查询条件包装器工厂方法 ============

    /**
     * 构建Lambda查询条件包装器
     */
    public LambdaQueryWrapper<T> buildLambdaQuery() {
        return Wrappers.lambdaQuery(getEntityClass());
    }

    /**
     * 构建Lambda更新条件包装器
     */
    public LambdaUpdateWrapper<T> buildLambdaUpdate() {
        return Wrappers.lambdaUpdate(getEntityClass());
    }

    /**
     * 构建标准查询条件包装器（用于复杂聚合查询）
     */
    public QueryWrapper<T> buildQueryWrapper() {
        return new QueryWrapper<>();
    }

    // ==================== 单个操作方法 ====================

    // @Transactional(rollbackFor = Exception.class)
    public int save(T entity) {
        if (Objects.isNull(entity)) {
            log.info("FmkService|save|entity is null");
            return 0;
        }
        setInsertDefault(entity);
        log.info("FmkService|save|entity={}", FmkJacksonUtil.toJson(entity));
        return this.baseMapper.insert(entity);
    }

    // @Transactional(rollbackFor = Exception.class)
    public int updateById(T entity) {
        if (Objects.isNull(entity)) {
            log.info("FmkService|updateById|entity is null");
            return 0;
        }
        setUpdateDefault(entity);
        log.info("FmkService|updateById|entity={}", FmkJacksonUtil.toJson(entity));
        return this.baseMapper.updateById(entity);
    }

    // @Transactional(rollbackFor = Exception.class)
    public int deleteById(Serializable id) {
        if (Objects.isNull(id)) {
            log.info("FmkService|deleteById|entity is null");
            return 0;
        }
        T byIdDb = getById(id);
        if (Objects.isNull(byIdDb)) {
            log.info("FmkService|deleteById|byIdDb is null");
            return 0;
        }
        byIdDb.setDelFlag(NormalEnum.ABNORMAL);
        setUpdateDefault(byIdDb);
        log.info("FmkService|removeById|id={}", id);
        return this.baseMapper.updateById(byIdDb);
    }

    public T getById(Serializable id) {
        if (Objects.isNull(id)) {
            log.info("FmkService|getById|id is null");
            return null;
        }
        log.debug("FmkService|getById|id={}", id);
        // 使用Lambda条件查询，过滤已删除数据
        LambdaQueryWrapper<T> wrapper = buildLambdaQuery();
        wrapper.eq(T::getId, id)
                .eq(T::getDelFlag, NormalEnum.NORMAL);

        return this.baseMapper.selectOne(wrapper);
    }

    public Optional<T> getByIdOp(Serializable id) {
        return Optional.ofNullable(getById(id));
    }

    /**
     * 根据ID查询（包含已删除数据）- 特殊场景使用
     */
    public T getByIdIncludeDeleted(Serializable id) {
        if (Objects.isNull(id)) {
            log.info("FmkService|getByIdIncludeDeleted|id is null");
            return null;
        }
        log.debug("FmkService|getByIdIncludeDeleted|id={}", id);
        return this.baseMapper.selectById(id);
    }

    // ==================== 批量操作方法 ====================

    /**
     * 批量保存 - 默认批次大小
     */
    public int saveBatch(Collection<T> entityList) {
        return saveBatch(entityList, DEFAULT_BATCH_SIZE);
    }

    /**
     * 批量保存 - 手动控制事务，分批提交
     */
    public int saveBatch(Collection<T> entityList, int batchSize) {
        if (CollectionUtils.isEmpty(entityList)) {
            log.info("FmkService|saveBatch|entityList is null");
            return 0;
        }

        List<T> list = entityList instanceof List ? (List<T>) entityList : new ArrayList<>(entityList);
        int processedCount = 0;
        int batchNumber = 1;

        for (List<T> batchList : Lists.partition(list, batchSize)) {
            setInsertDefault(batchList);
            boolean batchSuccess = executeManualTransactionBatch(batchList, BatchOperationTypeEnum.INSERT, batchNumber);
            if (batchSuccess) {
                processedCount += batchList.size();
            } else {
                break;
            }
            batchNumber++;
        }
        log.info("FmkService|saveBatch|processedCount={}", processedCount);
        return processedCount;
    }

    /**
     * 批量更新 - 默认批次大小
     */
    public int updateBatchById(Collection<T> entityList) {
        return updateBatchById(entityList, DEFAULT_BATCH_SIZE);
    }

    /**
     * 批量更新 - 手动控制事务，分批提交
     */
    public int updateBatchById(Collection<T> entityList, int batchSize) {
        if (CollectionUtils.isEmpty(entityList)) {
            log.info("FmkService|updateBatchById|entityList is null");
            return 0;
        }

        List<T> list = entityList instanceof List ? (List<T>) entityList : new ArrayList<>(entityList);
        int processedCount = 0;
        int batchNumber = 1;

        for (List<T> batchList : Lists.partition(list, batchSize)) {
            setUpdateDefault(batchList);
            boolean batchSuccess = executeManualTransactionBatch(batchList, BatchOperationTypeEnum.UPDATE, batchNumber);

            if (batchSuccess) {
                processedCount += batchList.size();
            } else {
                break;
            }
            batchNumber++;
        }
        log.info("Batch update completed: total={}, batchSize={}, processedCount={}",
                entityList.size(), batchSize, processedCount);

        return processedCount;
    }

    /**
     * 批量逻辑删除 - 默认批次大小
     */
    public int updateBatchDelFlagById(Collection<? extends Serializable> idList) {
        return updateBatchDelFlagById(idList, DEFAULT_BATCH_SIZE);
    }

    /**
     * 批量逻辑删除 - 手动控制事务，分批提交
     */
    public int updateBatchDelFlagById(Collection<? extends Serializable> idList, int batchSize) {
        if (CollectionUtils.isEmpty(idList)) {
            log.info("FmkService|updateBatchDelFlagById|entityList is null");
            return 0;
        }

        List<T> listByIdsService = listByIdListService(idList);
        if (CollectionUtils.isEmpty(listByIdsService)) {
            return 0;
        }

        listByIdsService.forEach(entity -> {
            entity.setDelFlag(NormalEnum.NORMAL);
            setUpdateDefault(entity);
        });

        int updated = updateBatchById(listByIdsService, batchSize);
        log.info("FmkService|updateBatchDelFlagById|processedCount={}", updated);
        return updated;
    }

    /**
     * 批量物理删除 - 直接删除记录
     */
    public int deleteByIdList(Collection<? extends Serializable> idList) {
        if (CollectionUtils.isEmpty(idList)) {
            log.info("FmkService|deleteByIdList|idList is null");
            return 0;
        }
        int deleted = getBaseMapper().deleteBatchIds(idList);
        log.info("FmkService|deleteByIdList|deletedCount={}", deleted);
        return deleted;
    }

    // ==================== 查询方法 ====================

    /**
     * 批量查询 - 根据ID列表查询（过滤已删除数据）
     */
    public List<T> listByIdListService(Collection<? extends Serializable> idList) {
        if (CollectionUtils.isEmpty(idList)) {
            log.info("FmkService|listByIdListService|idList is null");
            return new ArrayList<>();
        }

        LambdaQueryWrapper<T> wrapper = buildLambdaQuery();
        wrapper.in(T::getId, idList)
                .eq(T::getDelFlag, NormalEnum.NORMAL);

        List<T> resultList = this.baseMapper.selectList(wrapper);
        log.debug("Batch query completed: requested={}, found={}", idList.size(), resultList.size());

        return FmkCollectionUtil.emptyIfNullReturnNewList(resultList);
    }

    /**
     * 批量查询 - 根据ID列表查询（包含已删除数据）
     */
    public List<T> listByIdsServiceIncludeDeleted(Collection<? extends Serializable> idList) {
        if (CollectionUtils.isEmpty(idList)) {
            log.info("FmkService|listByIdsServiceIncludeDeleted|idList is null");
            return new ArrayList<>();
        }

        List<T> resultList = this.baseMapper.selectBatchIds(idList);
        log.debug("Batch query completed: requested={}, found={}", idList.size(), resultList.size());
        return FmkCollectionUtil.emptyIfNullReturnNewList(resultList);
    }

    /**
     * 查询所有数据（限制数量，默认限制）
     */
    public List<T> listAllLimitService() {
        return listAllLimitService(DEFAULT_QUERY_LIMIT);
    }

    /**
     * 查询所有数据（限制数量，自动过滤已删除数据）
     */
    public List<T> listAllLimitService(int limit) {
        LambdaQueryWrapper<T> wrapper = buildLambdaQuery();
        wrapper.eq(T::getDelFlag, NormalEnum.NORMAL)
                .orderByDesc(T::getCreateDate)
                .last("LIMIT " + Math.min(limit, DEFAULT_QUERY_LIMIT));

        List<T> resultList = this.baseMapper.selectList(wrapper);
        log.debug("listAllLimitService completed: limit={}, actual={}", limit, resultList.size());
        return FmkCollectionUtil.emptyIfNullReturnNewList(resultList);
    }

    // ==================== 核心批量事务执行方法 ====================

    /**
     * 手动控制事务执行单个批次 - 核心方法
     */
    private boolean executeManualTransactionBatch(List<T> batchList, BatchOperationTypeEnum operation, int batchNumber) {
        // 🔥 不需要指定数据源，自动使用当前数据源
        return Boolean.TRUE.equals(
                fmkTransactionTemplateUtil.executeTx(() -> {
                    try (SqlSession batchSession = sqlSessionFactory.openSession(ExecutorType.BATCH, false)) {
                        M batchMapper = batchSession.getMapper(getMapperClass());

                        for (T entity : batchList) {
                            executeOperation(batchMapper, entity, operation);
                        }

                        batchSession.flushStatements();
                        return true;

                    } catch (Exception e) {
                        log.error("Batch {} {} operation failed", batchNumber, operation, e);
                        throw e;
                    }
                })
        );
    }

    /**
     * 执行具体的操作
     */
    private void executeOperation(M batchMapper, T entity, BatchOperationTypeEnum operation) {
        switch (operation) {
            case INSERT:
                batchMapper.insert(entity);
                break;
            case UPDATE:
                batchMapper.updateById(entity);
                break;
            default:
                throw new IllegalArgumentException("Unsupported operation: " + operation);
        }
    }

    // ==================== 实体默认值设置方法 ====================

    private void setInsertDefault(T entity) {
        if (Objects.isNull(entity)) {
            log.info("FmkService|setInsertDefault|entity is null");
            return;
        }
        Instant now = FmkInstantUtil.now();
        setInsertDefault(entity, now);
    }

    private void setInsertDefault(T entity, Instant now) {
        if (Objects.isNull(entity)) {
            log.info("FmkService|setInsertDefault|entity is null");
            return;
        }
        Optional<FmkUserId> userIdOptional = FmkContextUtil.getUserId();
        if (userIdOptional.isPresent()) {
            FmkUserId userId = userIdOptional.get();
            entity.setCreateUser(userId.getValue().toString());
            entity.setUpdateUser(userId.getValue().toString());
        }
        entity.setCreateDate(now);
        entity.setUpdateDate(now);
        entity.setDelFlag(NormalEnum.NORMAL);

        Optional<FmkTraceId> traceIdOptional = FmkContextUtil.getTraceId();
        traceIdOptional.ifPresent(entity::setTraceId);
    }

    private void setInsertDefault(List<T> entityList) {
        if (CollectionUtils.isEmpty(entityList)) {
            log.info("FmkService|setInsertDefault|entityList is null");
            return;
        }
        Instant now = FmkInstantUtil.now();
        for (T t : entityList) {
            setInsertDefault(t, now);
        }
    }

    private void setUpdateDefault(T entity) {
        if (Objects.isNull(entity)) {
            log.info("FmkService|setUpdateDefault|entity is null");
            return;
        }
        Instant now = FmkInstantUtil.now();
        setUpdateDefault(entity, now);
    }

    private void setUpdateDefault(T entity, Instant now) {
        if (Objects.isNull(entity)) {
            log.info("FmkService|setUpdateDefault|entity is null");
            return;
        }
        Optional<FmkUserId> userIdOptional = FmkContextUtil.getUserId();
        userIdOptional.ifPresent(userId -> entity.setUpdateUser(userId.getValue().toString()));
        entity.setUpdateDate(now);

        Optional<FmkTraceId> traceIdOptional = FmkContextUtil.getTraceId();
        traceIdOptional.ifPresent(entity::setTraceId);
    }

    private void setUpdateDefault(List<T> entityList) {
        if (CollectionUtils.isEmpty(entityList)) {
            log.info("FmkService|setUpdateDefault|entityList is null");
            return;
        }
        Instant now = FmkInstantUtil.now();
        for (T t : entityList) {
            setUpdateDefault(t, now);
        }
    }

    // ==================== 条件查询方法 ====================

    /**
     * 条件查询 - 单个结果（自动过滤已删除数据）
     */
    public T getByCondition(Wrapper<T> queryWrapper) {
        Wrapper<T> finalWrapper = addDeletedFilter(queryWrapper);
        return this.baseMapper.selectOne(finalWrapper);
    }

    /**
     * 条件查询 - 列表结果（自动过滤已删除数据）
     */
    public List<T> listByCondition(Wrapper<T> queryWrapper) {
        Wrapper<T> finalWrapper = addDeletedFilter(queryWrapper);
        List<T> resultList = this.baseMapper.selectList(finalWrapper);
        return FmkCollectionUtil.emptyIfNullReturnNewList(resultList);
    }

    /**
     * 条件查询 - 分页结果（自动过滤已删除数据）
     */
    public IPage<T> pageByCondition(IPage<T> page, Wrapper<T> queryWrapper) {
        Wrapper<T> finalWrapper = addDeletedFilter(queryWrapper);
        IPage<T> iPage = this.baseMapper.selectPage(page, finalWrapper);
        return IPageUtil.emptyIfNullReturnNewList(iPage);
    }

    /**
     * 条件查询 - 分页结果（自动过滤已删除数据，带排序）
     */
    public IPage<T> pageByCondition(IPage<T> page,
                                    Wrapper<T> queryWrapper,
                                    List<FmkOrderItem> orderItemList) {
        Wrapper<T> finalWrapper = addDeletedFilter(queryWrapper);
        if (!CollectionUtils.isEmpty(orderItemList)) {
            addOrderBy(finalWrapper, orderItemList, Maps.newHashMap());
        }

        IPage<T> iPage = this.baseMapper.selectPage(page, finalWrapper);
        return IPageUtil.emptyIfNullReturnNewList(iPage);
    }

    /**
     * 条件统计（自动过滤已删除数据）
     */
    public Long countByCondition(Wrapper<T> queryWrapper) {
        Wrapper<T> finalWrapper = addDeletedFilter(queryWrapper);
        return this.baseMapper.selectCount(finalWrapper);
    }

    /**
     * 条件更新
     */
    // @Transactional(rollbackFor = Exception.class)
    public int updateByCondition(T entity, Wrapper<T> updateWrapper) {
        // if (Objects.isNull(entity)) {
        // }
        setUpdateDefault(entity);
        return this.baseMapper.update(entity, updateWrapper);
    }

    // /**
    //  * 条件更新
    //  */
    // @Transactional(rollbackFor = Exception.class)
    // public int updateByCondition(Wrapper<T> updateWrapper) {
    //     return this.baseMapper.update(null, updateWrapper);
    // }

    // ==================== 包含已删除数据的查询方法 ====================

    /**
     * 条件查询 - 单个结果（包含已删除数据）
     */
    public T getByConditionIncludeDeleted(Wrapper<T> queryWrapper) {
        return this.baseMapper.selectOne(queryWrapper);
    }

    /**
     * 条件查询 - 列表结果（包含已删除数据）
     */
    public List<T> listByConditionIncludeDeleted(Wrapper<T> queryWrapper) {
        List<T> resultList = this.baseMapper.selectList(queryWrapper);
        return FmkCollectionUtil.emptyIfNullReturnNewList(resultList);
    }

    /**
     * 条件查询 - 分页结果（包含已删除数据）
     */
    public IPage<T> pageByConditionIncludeDeleted(IPage<T> page, Wrapper<T> queryWrapper) {
        IPage<T> iPage = this.baseMapper.selectPage(page, queryWrapper);
        return IPageUtil.emptyIfNullReturnNewList(iPage);
    }

    /**
     * 条件统计（包含已删除数据）
     */
    public Long countByConditionIncludeDeleted(Wrapper<T> queryWrapper) {
        return this.baseMapper.selectCount(queryWrapper);
    }

    /**
     * 条件删除（逻辑删除）
     */
    // @Transactional(rollbackFor = Exception.class)
    public int updateBatchDelFlagByCondition(Wrapper<T> queryWrapper) {
        // 使用 LambdaUpdateWrapper 进行逻辑删除
        LambdaUpdateWrapper<T> updateWrapper = buildLambdaUpdate();
        updateWrapper.set(T::getDelFlag, NormalEnum.ABNORMAL);
        setUpdateDefaultForLambdaWrapper(updateWrapper);

        // 将查询条件复制到更新条件中
        if (queryWrapper != null) {
            String sqlSegment = queryWrapper.getSqlSegment();
            if (sqlSegment != null && !sqlSegment.trim().isEmpty()) {
                updateWrapper.apply(sqlSegment);
            }
        }

        return this.baseMapper.update(null, updateWrapper);
    }

    /**
     * 为 LambdaUpdateWrapper 设置更新默认值
     */
    private void setUpdateDefaultForLambdaWrapper(LambdaUpdateWrapper<T> updateWrapper) {
        Instant now = FmkInstantUtil.now();
        updateWrapper.set(T::getUpdateDate, now);

        Optional<FmkUserId> userIdOptional = FmkContextUtil.getUserId();
        userIdOptional.ifPresent(userId -> updateWrapper.set(T::getUpdateUser, userId.toString()));
    }

    /**
     * 根据字段值查询单个实体
     */
    public T getByField(String fieldName, Object value) {
        LambdaQueryWrapper<T> wrapper = buildLambdaQuery();
        // 由于字段名是动态的，这里仍需使用apply方法
        wrapper.apply(fieldName + " = {0}", value)
                .eq(T::getDelFlag, NormalEnum.NORMAL)
                .last("LIMIT 1");
        return this.baseMapper.selectOne(wrapper);
    }

    /**
     * 根据多个字段值查询
     */
    public List<T> listByFields(Map<String, Object> fieldMap) {
        LambdaQueryWrapper<T> wrapper = buildLambdaQuery();
        // 由于字段名是动态的，这里仍需使用apply方法
        fieldMap.forEach((key, value) -> wrapper.apply(key + " = {0}", value));
        wrapper.eq(T::getDelFlag, NormalEnum.NORMAL);
        List<T> resultList = this.baseMapper.selectList(wrapper);
        return FmkCollectionUtil.emptyIfNullReturnNewList(resultList);
    }

    // ==================== 统计相关方法 ====================

    /**
     * 批量统计 - 针对多个字段值进行统计
     */
    public Map<String, Integer> batchCountByField(String groupByField,
                                                  String inField,
                                                  Collection<Long> inValueList) {
        if (CollectionUtils.isEmpty(inValueList)) {
            log.warn("FmkService|batchCountByField|inValueList is empty");
            return new HashMap<>();
        }

        QueryWrapper<T> wrapper = buildQueryWrapper();
        wrapper.in(inField, inValueList)
                .eq(DbFieldNameEnum.DEL_FLAG.getCode(), NormalEnum.NORMAL)
                .groupBy(groupByField)
                .select(groupByField + ", COUNT(" + inField + ") as count_value");

        List<Map<String, Object>> results = this.baseMapper.selectMaps(wrapper);

        List<Map<String, Object>> newList = FmkCollectionUtil.emptyIfNullReturnNewList(results);

        return newList.stream()
                .collect(Collectors.toMap(
                        map -> String.valueOf(map.get(groupByField)),
                        map -> Integer.valueOf(map.get(DbAggregateEnum.COUNT_VALUE.getCode()).toString()),
                        (existing, replacement) -> existing
                ));
    }

    /**
     * 批量求和 - 根据分组字段进行求和统计
     */
    public Map<String, BigDecimal> batchSumByField(String sumField,
                                                   String groupByField,
                                                   String inField,
                                                   Collection<Long> inValueList) {
        if (CollectionUtils.isEmpty(inValueList)) {
            log.warn("FmkService|batchSumByField|inValueList is empty");
            return new HashMap<>();
        }

        QueryWrapper<T> wrapper = buildQueryWrapper();
        wrapper.in(inField, inValueList)
                .eq(DbFieldNameEnum.DEL_FLAG.getCode(), NormalEnum.NORMAL)
                .groupBy(groupByField)
                .select(groupByField + ", COALESCE(SUM(" + sumField + "), 0) as sum_value");

        try {
            List<Map<String, Object>> resultList = this.baseMapper.selectMaps(wrapper);

            List<Map<String, Object>> newList = FmkCollectionUtil.emptyIfNullReturnNewList(resultList);

            return newList.stream()
                    .collect(Collectors.toMap(
                            map -> String.valueOf(map.get(groupByField)),
                            map -> new BigDecimal(map.get(DbAggregateEnum.SUM_VALUE.getCode()).toString()),
                            (existing, replacement) -> existing
                    ));
        } catch (Exception e) {
            log.error("FmkService|batchSumByField|分组求和失败|sumField={}|groupByField={}|error={}",
                    sumField, groupByField, e.getMessage(), e);
            throw e;
        }
    }

    /**
     * 批量求和 - 根据分组字段进行求和统计（使用已有的查询条件）
     */
    public Map<String, BigDecimal> batchSumByField(String sumField,
                                                   String groupByField,
                                                   QueryWrapper<T> wrapper) {
        try {
            wrapper.eq(DbFieldNameEnum.DEL_FLAG.getCode(), NormalEnum.NORMAL)
                    .groupBy(groupByField)
                    .select(groupByField + ", COALESCE(SUM(" + sumField + "), 0) as sum_value");

            List<Map<String, Object>> resultList = this.baseMapper.selectMaps(wrapper);

            List<Map<String, Object>> newList = FmkCollectionUtil.emptyIfNullReturnNewList(resultList);

            return newList.stream()
                    .collect(Collectors.toMap(
                            map -> String.valueOf(map.get(groupByField)),
                            map -> new BigDecimal(map.get(DbAggregateEnum.SUM_VALUE.getCode()).toString()),
                            (existing, replacement) -> existing
                    ));
        } catch (Exception e) {
            log.error("FmkService|batchSumByField|分组求和失败|sumField={}|groupByField={}|error={}",
                    sumField, groupByField, e.getMessage(), e);
            throw e;
        }
    }

    // ==================== 私有辅助方法 ====================

    /**
     * 为查询条件添加删除状态过滤
     */
    @SuppressWarnings("unchecked")
    private Wrapper<T> addDeletedFilter(Wrapper<T> originalWrapper) {
        if (originalWrapper == null) {
            LambdaQueryWrapper<T> wrapper = buildLambdaQuery();
            wrapper.eq(T::getDelFlag, NormalEnum.NORMAL);
            return wrapper;
        }

        // 如果是 LambdaQueryWrapper
        // JDK 11 兼容写法：不使用 pattern matching
        if (originalWrapper instanceof LambdaQueryWrapper) {
            @SuppressWarnings("unchecked")
            LambdaQueryWrapper<T> lambdaWrapper = (LambdaQueryWrapper<T>) originalWrapper;
            // 检查是否已经包含 delFlag 条件
            if (!containsDelFlagCondition(lambdaWrapper)) {
                lambdaWrapper.eq(T::getDelFlag, NormalEnum.NORMAL);
            }
            return lambdaWrapper;
        }

        // 其他类型的 Wrapper，创建新的 LambdaQueryWrapper
        LambdaQueryWrapper<T> newWrapper = buildLambdaQuery();
        newWrapper.eq(T::getDelFlag, NormalEnum.NORMAL);

        // 如果原始wrapper有SQL片段，尝试应用它
        if (originalWrapper.getSqlSegment() != null && !originalWrapper.getSqlSegment().isEmpty()) {
            newWrapper.apply(originalWrapper.getSqlSegment());
        }

        log.warn("Converting wrapper type: {} to LambdaQueryWrapper with delete filter",
                originalWrapper.getClass().getSimpleName());

        return newWrapper;
    }

    /**
     * 检查 wrapper 是否已包含删除状态条件
     */
    private boolean containsDelFlagCondition(Wrapper<T> wrapper) {
        String sqlSegment = wrapper.getSqlSegment();
        return sqlSegment != null && (
                sqlSegment.contains(DbFieldNameEnum.DEL_FLAG.getCode()) || sqlSegment.contains(DbFieldNameEnum.DEL_FLAG.getMsg())
        );
    }

    /**
     * 添加创建用户条件 - 支持 LambdaQueryWrapper
     */
    public void addEqCreateUser(Wrapper<T> wrapper) {
        Optional<FmkUserId> userIdOptional = FmkContextUtil.getUserId();
        if (userIdOptional.isEmpty()) {
            return;
        }
        FmkUserId fmkUserId = userIdOptional.get();
        String userId = fmkUserId.getValue().toString();

        // 根据 wrapper 类型添加条件
        // JDK 11 兼容写法：不使用 pattern matching
        if (wrapper instanceof LambdaQueryWrapper) {
            @SuppressWarnings("unchecked")
            LambdaQueryWrapper<T> lambdaWrapper = (LambdaQueryWrapper<T>) wrapper;
            lambdaWrapper.eq(T::getCreateUser, userId);
        }
    }

    /**
     * 添加排序条件 - 支持 LambdaQueryWrapper
     */
    /**
     * 添加排序条件 - 支持 LambdaQueryWrapper
     */
    public void addOrderBy(Wrapper<T> wrapper,
                           List<FmkOrderItem> orderItemList,
                           Map<String, String> tempAllowedColumnMap) {
        if (Objects.isNull(wrapper)) {
            return;
        }
        if (CollectionUtils.isEmpty(orderItemList)) {
            // 默认排序
            addDefaultOrder(wrapper);
            return;
        }

        // 字段白名单映射（前端字段名 → 数据库字段名）
        Map<String, String> allowedColumns = Map.of(
                "id", "id",
                "createDate", "create_date",
                "updateDate", "update_date",
                "name", "name",
                "status", "status",
                "userId", "user_id",
                "username", "username"
                // 这里可以继续添加
        );

        boolean hasValidOrder = false;

        // 对于 LambdaQueryWrapper，收集所有排序条件
        List<String> orderClauses = new ArrayList<>();

        for (FmkOrderItem orderItem : orderItemList) {
            if (orderItem == null || StringUtils.isBlank(orderItem.getColumn())) {
                continue;
            }
            String column = allowedColumns.get(orderItem.getColumn());
            String tempColumn = tempAllowedColumnMap != null ? tempAllowedColumnMap.get(orderItem.getColumn()) : null;

            // 优先使用临时映射，如果没有则使用默认映射
            String finalColumn = tempColumn != null ? tempColumn : column;

            if (finalColumn == null) {
                // 忽略非法字段，避免 SQL 注入
                continue;
            }

            hasValidOrder = true;

            // 使用 LambdaQueryWrapper 添加排序条件
            if (wrapper instanceof LambdaQueryWrapper) {
                // 对于 LambdaQueryWrapper，收集排序条件
                String orderDirection = orderItem.getOrderFlag().getCode();
                orderClauses.add(finalColumn + " " + orderDirection);
            }
        }

        // 对于 LambdaQueryWrapper，使用 last 方法添加 ORDER BY 子句
        // JDK 11 兼容写法：不使用 pattern matching
        if (wrapper instanceof LambdaQueryWrapper && !orderClauses.isEmpty()) {
            @SuppressWarnings("unchecked")
            LambdaQueryWrapper<T> lambdaWrapper = (LambdaQueryWrapper<T>) wrapper;
            String orderByClause = "ORDER BY " + String.join(", ", orderClauses);
            lambdaWrapper.last(orderByClause);
        }

        // 兜底排序，防止排序不稳定
        if (!hasValidOrder) {
            addDefaultOrder(wrapper);
        }
    }

    /**
     * 添加默认排序
     */
    private void addDefaultOrder(Wrapper<T> wrapper) {
        if (wrapper instanceof LambdaQueryWrapper) {
            ((LambdaQueryWrapper<T>) wrapper).last("ORDER BY create_date DESC");
        }
    }

}