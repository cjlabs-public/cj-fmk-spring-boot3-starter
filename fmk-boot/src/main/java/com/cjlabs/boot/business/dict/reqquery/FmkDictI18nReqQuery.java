package com.cjlabs.boot.business.dict.reqquery;

import com.cjlabs.domain.enums.FmkLanguageEnum;
import lombok.Data;

import java.util.Collection;

/**
 * fmk_dict_i18n 系统字典多语言表
 * <p>
 * 2025-12-04 08:17:46
 */
@Data
public class FmkDictI18nReqQuery {

    /**
     * 字典类型，与主表一致
     */
    private String dictType;

    /**
     * 字典键，与主表一致
     */
    private String dictKey;

    /**
     * 语言代码，例如 ZH_CN, EN_US
     */
    private FmkLanguageEnum languageCode;

    private Integer sortOrder;

    private Collection<String> dictKeyColl;

}
