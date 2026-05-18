package com.cjlabs.boot.business.timezone.service;

import com.cjlabs.boot.business.timezone.convertReq.FmkTimezoneReqConvert;
import com.cjlabs.boot.business.timezone.mysql.FmkTimezone;
import com.cjlabs.boot.business.timezone.reqquery.FmkTimezoneReqQuery;
import com.cjlabs.boot.business.timezone.reqsave.FmkTimezoneReqSave;
import com.cjlabs.boot.business.timezone.requpdate.FmkTimezoneReqUpdate;
import com.cjlabs.boot.business.timezone.wrapmapper.FmkTimezoneWrapMapper;
import com.cjlabs.db.domain.FmkPageResponse;
import com.cjlabs.db.domain.FmkRequest;
import com.cjlabs.web.check.FmkCheckUtil;
import com.cjlabs.domain.exception.Error200ExceptionEnum;
import com.cjlabs.web.json.FmkJacksonUtil;

import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
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
public class FmkTimezoneService {
    
    @Autowired
    private FmkTimezoneWrapMapper fmkTimezoneWrapMapper;
	
    public FmkTimezone getById(FmkRequest<Void> input) {
        // 参数校验
        FmkCheckUtil.checkInput(Objects.isNull(input));
        FmkCheckUtil.checkInput(StringUtils.isBlank(input.getBusinessKey()));

        String id = input.getBusinessKey();
        return fmkTimezoneWrapMapper.getById(id);
    }

    public FmkTimezone save(FmkTimezoneReqSave request) {
        FmkCheckUtil.checkInput(Objects.isNull(request));
        
        FmkTimezone db = FmkTimezoneReqConvert.toDb(request);

        int saved = fmkTimezoneWrapMapper.save(db);
        FmkCheckUtil.throw200Error(saved == 0, Error200ExceptionEnum.DATA_NOT_FOUND);
        return db;
    }


    public boolean update(FmkTimezoneReqUpdate request) {
        FmkCheckUtil.checkInput(Objects.isNull(request));
        
        FmkTimezone db = FmkTimezoneReqConvert.toDb(request);
        
        int updated = fmkTimezoneWrapMapper.updateById(db);
        if (updated > 0) {
            log.info("FmkTimezoneService|update|update={}|id={}", updated, request.getId());
            return true;
        }
        return false;
    }

    public boolean deleteById(String businessKey) {
        // 参数校验
        FmkCheckUtil.checkInput(StringUtils.isBlank(businessKey));
        
        int deleted = fmkTimezoneWrapMapper.deleteById(businessKey);
        if (deleted > 0) {
            log.info("FmkTimezoneService|deleteById|deleteById={}|id={}", deleted, businessKey);
            return true;
        }
        return false;
    }

    /**
     * 查询所有（不分页）
     */
    public List<FmkTimezone> listAll() {
        List<FmkTimezone> entityList = fmkTimezoneWrapMapper.listAllLimitService();
        return entityList;
    }
    
      /**
     * 分页查询
     */
    public FmkPageResponse<FmkTimezone> pageQuery(FmkRequest<FmkTimezoneReqQuery> input) {
        // 参数校验
        FmkCheckUtil.checkInput(Objects.isNull(input));
        FmkCheckUtil.checkInput(Objects.isNull(input.getRequest()));

        // 执行分页查询
        FmkPageResponse<FmkTimezone> entityPage = fmkTimezoneWrapMapper.pageQuery(input);

        return entityPage;
    }
}