package com.cjlabs.core.types.strings;

import com.cjlabs.core.types.base.BaseStringType;

import org.apache.commons.lang3.StringUtils;

/**
 * 货币代码类型安全包装类
 */
public class FmkUsername extends BaseStringType<FmkUsername> {

    /**
     * 从字符串创建CurrencyCode，支持null值
     */
    public static FmkUsername ofNullable(String value) {
        return ofNullable(value, FmkUsername::new);
    }

    /**
     * 从Object值创建CurrencyCode，支持JSON反序列化
     */
    public static FmkUsername ofNullable(Object value) {
        return ofNullableObject(value, FmkUsername::new, String.class);
    }

    /**
     * 从字符串创建CurrencyCode，不允许null或空值
     */
    public static FmkUsername of(String value) {
        if (StringUtils.isBlank(value)) {
            throw new IllegalArgumentException("Username cannot be null or empty");
        }
        return new FmkUsername(value.trim());
    }

    public FmkUsername(String value) {
        super(value);
        if (StringUtils.isBlank(value)) {
            throw new IllegalArgumentException("Username cannot be null or empty");
        }
        // 统一转为大写
        this.value = value;
    }

    @Override
    protected FmkUsername newInstance(String value) {
        return new FmkUsername(value);
    }

}