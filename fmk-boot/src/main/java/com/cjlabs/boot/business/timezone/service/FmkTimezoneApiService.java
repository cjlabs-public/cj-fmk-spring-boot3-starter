package com.cjlabs.boot.business.timezone.service;

import com.cjlabs.boot.business.timezone.convert.FmkTimezoneConvert;
import com.cjlabs.boot.business.timezone.mysql.FmkTimezone;
import com.cjlabs.boot.business.timezone.reqquery.FmkTimezoneReqQuery;
import com.cjlabs.boot.business.timezone.reqsave.FmkTimezoneReqSave;
import com.cjlabs.boot.business.timezone.requpdate.FmkTimezoneReqUpdate;
import com.cjlabs.boot.business.timezone.resp.FmkTimezoneResp;
import com.cjlabs.db.domain.FmkPageResponse;
import com.cjlabs.db.domain.FmkRequest;
import com.cjlabs.web.check.FmkCheckUtil;
import com.cjlabs.web.json.FmkJacksonUtil;

import lombok.extern.slf4j.Slf4j;
import org.apache.commons.collections4.CollectionUtils;
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
public class FmkTimezoneApiService {
    
    @Autowired
    private FmkTimezoneService fmkTimezoneService;
	
    public FmkTimezoneResp getById(FmkRequest<Void> input) {
        // 参数校验
        FmkCheckUtil.checkInput(Objects.isNull(input));
        FmkCheckUtil.checkInput(StringUtils.isBlank(input.getBusinessKey()));

        FmkTimezone fmkTimezone = fmkTimezoneService.getById(input);
        return FmkTimezoneConvert.toResp(fmkTimezone);
    }

    public FmkTimezoneResp save(FmkRequest<FmkTimezoneReqSave> input) {
        // 参数校验
        FmkCheckUtil.checkInput(Objects.isNull(input));
        FmkCheckUtil.checkInput(Objects.isNull(input.getRequest()));

        FmkTimezoneReqSave request = input.getRequest();
        if (Objects.isNull(request)) {
            log.info("FmkTimezoneApiService|save|request is null");
            return null;
        }

        FmkTimezone fmkTimezone = fmkTimezoneService.save(request);
        return FmkTimezoneConvert.toResp(fmkTimezone);
    }


    public boolean update(FmkRequest<FmkTimezoneReqUpdate> input) {
        // 参数校验
        FmkCheckUtil.checkInput(Objects.isNull(input));
        FmkCheckUtil.checkInput(Objects.isNull(input.getRequest()));

        FmkTimezoneReqUpdate request = input.getRequest();
        if (Objects.isNull(request)) {
            log.info("FmkTimezoneApiService|update|request is null");
            return false;
        }
        return fmkTimezoneService.update(request);
    }

    public boolean deleteById(FmkRequest<Void> input) {
        // 参数校验
        FmkCheckUtil.checkInput(Objects.isNull(input));
        FmkCheckUtil.checkInput(Objects.isNull(input.getBusinessKey()));

        String businessKey = input.getBusinessKey();
        if (businessKey == null) {
        	log.info("FmkTimezoneApiService|deleteById|request is null");
            return false;
        }
        return fmkTimezoneService.deleteById(businessKey);
    }

    /**
     * 查询所有（不分页）
     */
    public List<FmkTimezoneResp> listAll() {
        List<FmkTimezone> entityList = fmkTimezoneService.listAll();
        List<FmkTimezoneResp> respList = FmkTimezoneConvert.toResp(entityList);
        return respList;
    }
    
      /**
     * 分页查询
     */
    public FmkPageResponse<FmkTimezoneResp> pageQuery(FmkRequest<FmkTimezoneReqQuery> input) {
        // 参数校验
        FmkCheckUtil.checkInput(Objects.isNull(input));
        FmkCheckUtil.checkInput(Objects.isNull(input.getRequest()));

        // 执行分页查询
        FmkPageResponse<FmkTimezone> entityPage = fmkTimezoneService.pageQuery(input);

        if (Objects.isNull(entityPage) || CollectionUtils.isEmpty(entityPage.getRecords())) {
            return FmkPageResponse.empty();
        }

        FmkPageResponse<FmkTimezoneResp> pageResponse = FmkPageResponse.of(entityPage, FmkTimezoneConvert::toResp);

        return pageResponse;
    }
}