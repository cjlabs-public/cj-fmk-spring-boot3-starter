package com.cjlabs.boot.business.timezone.reqquery;

import com.cjlabs.domain.enums.NormalEnum;
import lombok.Data;

/**
 * fmk_timezone 时区表
 *
 * 2026-05-18 22:08:53
 */
@Data
public class FmkTimezoneReqQuery {
    
    /**
     * IANA时区编码
     */
    private String code;

    /**
     * 时区名称
     */
    private String name;

    /**
     * UTC偏移
     */
    private String utcOffset;

    /**
     * 
     */
    private Integer sortOrder;

    /**
     * 
     */
    private NormalEnum status;

}