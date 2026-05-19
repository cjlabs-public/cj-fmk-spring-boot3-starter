package com.cjlabs.core.types.strings;

import com.cjlabs.core.types.base.BaseStringType;

import org.apache.commons.lang3.StringUtils;

/**
 * 货币代码类型安全包装类
 */
public class FmkTimezone extends BaseStringType<FmkTimezone> {

    /**
     * 从字符串创建CurrencyCode，支持null值
     */
    public static FmkTimezone ofNullable(String value) {
        return ofNullable(value, FmkTimezone::new);
    }

    /**
     * 从Object值创建CurrencyCode，支持JSON反序列化
     */
    public static FmkTimezone ofNullable(Object value) {
        return ofNullableObject(value, FmkTimezone::new, String.class);
    }

    /**
     * 从字符串创建CurrencyCode，不允许null或空值
     */
    public static FmkTimezone of(String value) {
        if (StringUtils.isBlank(value)) {
            throw new IllegalArgumentException("Username cannot be null or empty");
        }
        return new FmkTimezone(value.trim());
    }

    public FmkTimezone(String value) {
        super(value);
        if (StringUtils.isBlank(value)) {
            throw new IllegalArgumentException("Username cannot be null or empty");
        }
        // 统一转为大写
        this.value = value;
    }

    @Override
    protected FmkTimezone newInstance(String value) {
        return new FmkTimezone(value);
    }

}