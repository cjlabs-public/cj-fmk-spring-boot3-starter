package com.cjlabs.boot.business.timezone.convertReq;

import com.cjlabs.boot.business.timezone.mysql.FmkTimezone;
import com.cjlabs.boot.business.timezone.reqquery.FmkTimezoneReqQuery;
import com.cjlabs.boot.business.timezone.reqsave.FmkTimezoneReqSave;
import com.cjlabs.boot.business.timezone.requpdate.FmkTimezoneReqUpdate;

import java.util.Objects;

public class FmkTimezoneReqConvert {

    public static FmkTimezone toDb(FmkTimezoneReqQuery input) {
        if (Objects.isNull(input)) {
            return null;
        }
        FmkTimezone fmkTimezone = new FmkTimezone();

        fmkTimezone.setCode(input.getCode());
        fmkTimezone.setName(input.getName());
        fmkTimezone.setUtcOffset(input.getUtcOffset());
        fmkTimezone.setSortOrder(input.getSortOrder());
        fmkTimezone.setStatus(input.getStatus());

        return fmkTimezone;
    }

    public static FmkTimezone toDb(FmkTimezoneReqUpdate input) {
        if (Objects.isNull(input)) {
            return null;
        }
        FmkTimezone fmkTimezone = new FmkTimezone();

        fmkTimezone.setId(input.getId());
        fmkTimezone.setCode(input.getCode());
        fmkTimezone.setName(input.getName());
        fmkTimezone.setUtcOffset(input.getUtcOffset());
        fmkTimezone.setSortOrder(input.getSortOrder());
        fmkTimezone.setStatus(input.getStatus());

        return fmkTimezone;
    }

    public static FmkTimezone toDb(FmkTimezoneReqSave input) {
        if (Objects.isNull(input)) {
            return null;
        }
        FmkTimezone fmkTimezone = new FmkTimezone();

        fmkTimezone.setCode(input.getCode());
        fmkTimezone.setName(input.getName());
        fmkTimezone.setUtcOffset(input.getUtcOffset());
        fmkTimezone.setSortOrder(input.getSortOrder());
        fmkTimezone.setStatus(input.getStatus());

        return fmkTimezone;
    }
}