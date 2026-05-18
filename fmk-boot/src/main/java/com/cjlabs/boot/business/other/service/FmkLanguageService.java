package com.cjlabs.boot.business.other.service;

import com.cjlabs.boot.business.dict.resp.FmkDictResp;
import com.cjlabs.boot.business.dict.reqquery.FmkDictReqQuery;
import com.cjlabs.boot.business.dict.service.FmkDictService;
import com.cjlabs.db.domain.FmkRequest;
import com.cjlabs.domain.enums.NormalEnum;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class FmkLanguageService {

    public static final String DICT_TYPE = "fmk_language";

    @Autowired
    private FmkDictService fmkDictService;

    public List<FmkDictResp> listAll() {
        FmkDictReqQuery query = new FmkDictReqQuery();
        query.setDictType(DICT_TYPE);
        query.setStatus(NormalEnum.NORMAL);

        FmkRequest<FmkDictReqQuery> input = new FmkRequest<>();
        input.setRequest(query);

        return fmkDictService.listAll(input);
    }

}
