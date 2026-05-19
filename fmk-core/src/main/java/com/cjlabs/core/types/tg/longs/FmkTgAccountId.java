package com.cjlabs.core.types.tg.longs;


import com.cjlabs.core.types.base.BaseLongType;

/**
 * 用户ID类型安全包装类
 */
public class FmkTgAccountId extends BaseLongType<FmkTgAccountId> {

    /**
     * 从Long创建UserId，支持null值
     */
    public static FmkTgAccountId ofNullable(Long value) {
        return ofNullable(value, FmkTgAccountId::new);
    }

    /**
     * 从Object值创建UserId，支持JSON反序列化
     */
    public static FmkTgAccountId ofNullable(Object value) {
        return ofNullableObject(value, FmkTgAccountId::new, Long.class);
    }

    /**
     * 从Long创建UserId，不允许null值
     */
    public static FmkTgAccountId of(Long value) {
        if (value == null) {
            throw new IllegalArgumentException("UserId cannot be null");
        }
        return new FmkTgAccountId(value);
    }

    /**
     * 从int创建UserId
     */
    public static FmkTgAccountId of(int value) {
        return new FmkTgAccountId((long) value);
    }

    /**
     * 从字符串创建UserId
     */
    public static FmkTgAccountId fromString(String value) {
        if (value == null || value.isEmpty()) {
            throw new IllegalArgumentException("UserId string cannot be null or empty");
        }
        try {
            return new FmkTgAccountId(Long.parseLong(value));
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("Invalid UserId format: " + value, e);
        }
    }

    public FmkTgAccountId(Long value) {
        super(value);
        if (value == null) {
            throw new IllegalArgumentException("UserId cannot be null");
        }
    }

    @Override
    protected FmkTgAccountId newInstance(Long value) {
        return new FmkTgAccountId(value);
    }

}