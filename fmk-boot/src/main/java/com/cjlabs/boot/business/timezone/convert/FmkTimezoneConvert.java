package com.cjlabs.boot.business.timezone.convert;

import com.cjlabs.boot.business.timezone.mysql.FmkTimezone;
import com.cjlabs.boot.business.timezone.resp.FmkTimezoneResp;
import com.google.common.collect.Lists;
import org.apache.commons.collections4.CollectionUtils;

import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;


public class FmkTimezoneConvert {

    public static FmkTimezoneResp toResp(FmkTimezone input) {
        if (Objects.isNull(input)) {
            return null;
        }
        FmkTimezoneResp fmkTimezoneResp = new FmkTimezoneResp();

        fmkTimezoneResp.setId(input.getId());
        fmkTimezoneResp.setCode(input.getCode());
        fmkTimezoneResp.setName(input.getName());
        fmkTimezoneResp.setUtcOffset(input.getUtcOffset());
        fmkTimezoneResp.setSortOrder(input.getSortOrder());
        fmkTimezoneResp.setStatus(input.getStatus());
        return fmkTimezoneResp;
    }

    public static List<FmkTimezoneResp> toResp(List<FmkTimezone> inputList) {
        if (CollectionUtils.isEmpty(inputList)) {
            return Lists.newArrayList();
        }
        return inputList.stream().map(FmkTimezoneConvert::toResp).collect(Collectors.toList());
    }
}