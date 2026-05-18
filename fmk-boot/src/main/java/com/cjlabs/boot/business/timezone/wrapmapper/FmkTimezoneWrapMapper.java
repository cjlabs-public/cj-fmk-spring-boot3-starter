package com.cjlabs.boot.business.timezone.wrapmapper;

import com.cjlabs.boot.business.timezone.mapper.FmkTimezoneMapper;
import com.cjlabs.boot.business.timezone.mysql.FmkTimezone;
import com.cjlabs.boot.business.timezone.reqquery.FmkTimezoneReqQuery;
import com.cjlabs.db.mp.FmkService;
import com.cjlabs.db.domain.FmkOrderItem;
import com.cjlabs.db.domain.FmkPageResponse;
import com.cjlabs.db.domain.FmkRequest;
import com.cjlabs.web.check.FmkCheckUtil;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

/**
 * fmk_timezone 时区表
 *
 * 2026-05-18 22:08:53
 */
@Slf4j
@Service
public class FmkTimezoneWrapMapper extends FmkService<FmkTimezoneMapper, FmkTimezone> {
    
    protected FmkTimezoneWrapMapper(FmkTimezoneMapper mapper) {
        super(mapper);
    }
    
    @Override
    protected Class<FmkTimezone> getEntityClass() {
        return FmkTimezone.class;
    }

 	/**
     * 分页查询
     */
    public FmkPageResponse<FmkTimezone> pageQuery(FmkRequest<FmkTimezoneReqQuery> input) {
        // 参数校验
        FmkCheckUtil.checkInput(Objects.isNull(input));
        FmkCheckUtil.checkInput(Objects.isNull(input.getRequest()));

        // 构建分页对象
        Page<FmkTimezone> page = new Page<>(input.getCurrent(), input.getSize());
        FmkTimezoneReqQuery request = input.getRequest();

        // 构建查询条件
        LambdaQueryWrapper<FmkTimezone> lambdaQuery = buildLambdaQuery();


        List<FmkOrderItem> orderItemList = input.getOrderItemList();

        // 执行分页查询
        IPage<FmkTimezone> dbPage = super.pageByCondition(page, lambdaQuery, orderItemList);

        return FmkPageResponse.of(dbPage);
    }
}