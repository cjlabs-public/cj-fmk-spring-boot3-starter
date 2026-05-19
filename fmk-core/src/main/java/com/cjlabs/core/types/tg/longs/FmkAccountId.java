package com.cjlabs.core.types.tg.longs;


import com.cjlabs.core.types.base.BaseLongType;

/**
 * 用户ID类型安全包装类
 */
public class FmkAccountId extends BaseLongType<FmkAccountId> {

    /**
     * 从Long创建UserId，支持null值
     */
    public static FmkAccountId ofNullable(Long value) {
        return ofNullable(value, FmkAccountId::new);
    }

    /**
     * 从Object值创建UserId，支持JSON反序列化
     */
    public static FmkAccountId ofNullable(Object value) {
        return ofNullableObject(value, FmkAccountId::new, Long.class);
    }

    /**
     * 从Long创建UserId，不允许null值
     */
    public static FmkAccountId of(Long value) {
        if (value == null) {
            throw new IllegalArgumentException("UserId cannot be null");
        }
        return new FmkAccountId(value);
    }

    /**
     * 从int创建UserId
     */
    public static FmkAccountId of(int value) {
        return new FmkAccountId((long) value);
    }

    /**
     * 从字符串创建UserId
     */
    public static FmkAccountId fromString(String value) {
        if (value == null || value.isEmpty()) {
            throw new IllegalArgumentException("UserId string cannot be null or empty");
        }
        try {
            return new FmkAccountId(Long.parseLong(value));
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("Invalid UserId format: " + value, e);
        }
    }

    public FmkAccountId(Long value) {
        super(value);
        if (value == null) {
            throw new IllegalArgumentException("UserId cannot be null");
        }
    }

    @Override
    protected FmkAccountId newInstance(Long value) {
        return new FmkAccountId(value);
    }

}