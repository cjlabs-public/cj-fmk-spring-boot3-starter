package com.cjlabs.boot.business.timezone.mysql;

import com.cjlabs.db.domain.FmkBaseEntity;

import com.cjlabs.domain.enums.NormalEnum;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * fmk_timezone 时区表
 *
 * 2026-05-18 22:08:53
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = true)
public class FmkTimezone extends FmkBaseEntity {

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