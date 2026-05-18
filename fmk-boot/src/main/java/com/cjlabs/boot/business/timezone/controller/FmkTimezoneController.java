package com.cjlabs.boot.business.timezone.controller;

import com.cjlabs.boot.business.timezone.reqquery.FmkTimezoneReqQuery;
import com.cjlabs.boot.business.timezone.reqsave.FmkTimezoneReqSave;
import com.cjlabs.boot.business.timezone.requpdate.FmkTimezoneReqUpdate;
import com.cjlabs.boot.business.timezone.resp.FmkTimezoneResp;
import com.cjlabs.boot.business.timezone.service.FmkTimezoneApiService;
import com.cjlabs.db.domain.FmkPageResponse;
import com.cjlabs.db.domain.FmkRequest;
import com.cjlabs.web.threadlocal.FmkResult;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * fmk_timezone 时区表
 *
 * 2026-05-18 22:08:53
 */
@Slf4j
@RestController
@RequestMapping("/fmkApi/timezone")
public class FmkTimezoneController {

    @Autowired
    private FmkTimezoneApiService fmkTimezoneApiService;

    /**
     * 分页查询
     */
    @PostMapping("/page")
    public FmkResult<FmkPageResponse<FmkTimezoneResp>> page(@RequestBody FmkRequest<FmkTimezoneReqQuery> input) {
        FmkPageResponse<FmkTimezoneResp> page = fmkTimezoneApiService.pageQuery(input);
        return FmkResult.success(page);
    }

    /**
     * 查询所有（不分页）
     */
    @PostMapping("/list")
    public FmkResult<List<FmkTimezoneResp>> list() {
        List<FmkTimezoneResp> list = fmkTimezoneApiService.listAll();
        return FmkResult.success(list);
    }

    /**
     * 根据 ID 查询
     */
    @PostMapping("/get/byId")
    public FmkResult<FmkTimezoneResp> getById(@RequestBody FmkRequest<Void> input) {
        FmkTimezoneResp resp = fmkTimezoneApiService.getById(input);
        return FmkResult.success(resp);
    }

    /**
     * 新增
     */
    @PostMapping("/save")
    public FmkResult<FmkTimezoneResp> save(@RequestBody FmkRequest<FmkTimezoneReqSave> input) {
        FmkTimezoneResp result = fmkTimezoneApiService.save(input);
        return FmkResult.success(result);
    }

    /**
     * 更新
     */
    @PostMapping("/update/byId")
    public FmkResult<Boolean> update(@RequestBody FmkRequest<FmkTimezoneReqUpdate> input) {
        boolean result = fmkTimezoneApiService.update(input);
        return FmkResult.success(result);
    }

    /**
     * 删除
     */
    @PostMapping("/delete/byId")
    public FmkResult<Boolean> delete(@RequestBody FmkRequest<Void> input) {
        boolean result = fmkTimezoneApiService.deleteById(input);
        return FmkResult.success(result);
    }

}