package com.cjlabs.core.types.system.strings;

import com.cjlabs.core.types.base.BaseStringType;

import org.apache.commons.lang3.StringUtils;

/**
 * 货币代码类型安全包装类
 */
public class FmkLanguageCode extends BaseStringType<FmkLanguageCode> {

    /**
     * 从字符串创建CurrencyCode，支持null值
     */
    public static FmkLanguageCode ofNullable(String value) {
        return ofNullable(value, FmkLanguageCode::new);
    }

    /**
     * 从Object值创建CurrencyCode，支持JSON反序列化
     */
    public static FmkLanguageCode ofNullable(Object value) {
        return ofNullableObject(value, FmkLanguageCode::new, String.class);
    }

    /**
     * 从字符串创建CurrencyCode，不允许null或空值
     */
    public static FmkLanguageCode of(String value) {
        if (StringUtils.isBlank(value)) {
            throw new IllegalArgumentException("LanguageCode cannot be null or empty");
        }
        return new FmkLanguageCode(value.trim().toUpperCase());
    }

    public FmkLanguageCode(String value) {
        super(value);
        if (StringUtils.isBlank(value)) {
            throw new IllegalArgumentException("LanguageCode cannot be null or empty");
        }
        // 统一转为大写
        this.value = value.toUpperCase();
    }

    @Override
    protected FmkLanguageCode newInstance(String value) {
        return new FmkLanguageCode(value);
    }

}