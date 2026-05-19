package com.cjlabs.core.types.strings;

import com.cjlabs.core.types.base.BaseStringType;

import org.apache.commons.lang3.StringUtils;

/**
 * 货币代码类型安全包装类
 */
public class FmkCountryCode extends BaseStringType<FmkCountryCode> {

    /**
     * 从字符串创建CurrencyCode，支持null值
     */
    public static FmkCountryCode ofNullable(String value) {
        return ofNullable(value, FmkCountryCode::new);
    }

    /**
     * 从Object值创建CurrencyCode，支持JSON反序列化
     */
    public static FmkCountryCode ofNullable(Object value) {
        return ofNullableObject(value, FmkCountryCode::new, String.class);
    }

    /**
     * 从字符串创建CurrencyCode，不允许null或空值
     */
    public static FmkCountryCode of(String value) {
        if (StringUtils.isBlank(value)) {
            throw new IllegalArgumentException("CurrencyCode cannot be null or empty");
        }
        return new FmkCountryCode(value.trim().toUpperCase());
    }

    public FmkCountryCode(String value) {
        super(value);
        if (StringUtils.isBlank(value)) {
            throw new IllegalArgumentException("CurrencyCode cannot be null or empty");
        }
        // 统一转为大写
        this.value = value.toUpperCase();
    }

    @Override
    protected FmkCountryCode newInstance(String value) {
        return new FmkCountryCode(value);
    }

}