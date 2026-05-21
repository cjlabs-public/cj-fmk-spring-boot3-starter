package com.cjlabs.boot.business.dictbusiness.service;

import com.cjlabs.boot.business.dict.reqquery.FmkDictI18nReqQuery;
import com.cjlabs.boot.business.dict.reqquery.FmkDictReqQuery;
import com.cjlabs.boot.business.dict.resp.FmkDictI18nResp;
import com.cjlabs.boot.business.dict.resp.FmkDictResp;
import com.cjlabs.boot.business.dict.service.FmkDictI18nService;
import com.cjlabs.boot.business.dict.service.FmkDictService;
import com.cjlabs.core.collection.FmkCollectionUtil;
import com.cjlabs.core.collection.FmkMapUtil;
import com.cjlabs.db.domain.FmkRequest;
import com.cjlabs.domain.enums.FmkLanguageEnum;
import com.cjlabs.domain.enums.NormalEnum;

import com.google.common.collect.Lists;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.stream.Collectors;

@Slf4j
@Service
public class FmkFiatCurrencyService {

    public static final String DICT_TYPE = "fmk_fiat_currency";

    @Autowired
    private FmkDictService fmkDictService;

    @Autowired
    private FmkDictI18nService fmkDictI18nService;

    public List<FmkDictResp> listAll() {
        FmkDictReqQuery query = new FmkDictReqQuery();
        query.setDictType(DICT_TYPE);
        query.setStatus(NormalEnum.NORMAL);

        FmkRequest<FmkDictReqQuery> input = new FmkRequest<>();
        input.setRequest(query);

        return fmkDictService.listAll(input);
    }

    public FmkDictResp getOne() {
        FmkDictReqQuery query = new FmkDictReqQuery();
        query.setDictType(DICT_TYPE);
        query.setStatus(NormalEnum.NORMAL);

        FmkRequest<FmkDictReqQuery> input = new FmkRequest<>();
        input.setRequest(query);
        List<FmkDictResp> fmkDictRespList = fmkDictService.listAll(input);
        return FmkCollectionUtil.getFirst(fmkDictRespList);
    }


    public List<FmkDictI18nResp> listAllI18n(FmkLanguageEnum languageCode) {
        if (Objects.isNull(languageCode)) {
            log.info("FmkLanguageService|listAllI18n|languageCode is null");
            return Lists.newArrayList();
        }

        FmkDictI18nReqQuery query = new FmkDictI18nReqQuery();
        query.setDictType(DICT_TYPE);
        query.setLanguageCode(languageCode);
        // query.setStatus(NormalEnum.NORMAL);

        FmkRequest<FmkDictI18nReqQuery> input = new FmkRequest<>();
        input.setRequest(query);

        return fmkDictI18nService.listByDictTypeAndLanguageCode(input);
    }

    public Map<String, FmkDictI18nResp> listAllI18nReturnMap(FmkLanguageEnum languageCode) {
        List<FmkDictResp> dictRespList = listAll();
        if (FmkCollectionUtil.isEmpty(dictRespList)) {
            return FmkMapUtil.newHashMap();
        }
        List<FmkDictI18nResp> dictI18nRespList = listAllI18n(languageCode);
        if (FmkCollectionUtil.isEmpty(dictI18nRespList)) {
            return FmkMapUtil.newHashMap();
        }
        return dictI18nRespList
                .stream()
                .collect(Collectors.toMap(
                        FmkDictI18nResp::getDictKey,
                        c -> c,
                        (existing, replacement) -> existing
                ));
    }
}
