package com.cjlabs.domain.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 常用语言枚举，与数据库 language_code 保持一致（下划线格式，如 zh_CN）
 * 前端 Accept-Language 统一使用该格式
 * <p>
 * 有些是为了时区考虑的
 */
@Getter
@AllArgsConstructor
public enum FmkCountryEnum implements IEnumStr {

    CN("CN", "China"),
    US("US", "United States"),
    TW("TW", "Taiwan"),
    GB("GB", "United Kingdom"),

    ;

    private final String code;
    private final String msg;

}
