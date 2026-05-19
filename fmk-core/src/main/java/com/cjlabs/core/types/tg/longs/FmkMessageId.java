package com.cjlabs.core.types.tg.longs;


import com.cjlabs.core.types.base.BaseLongType;

/**
 * 用户ID类型安全包装类
 */
public class FmkMessageId extends BaseLongType<FmkMessageId> {

    /**
     * 从Long创建UserId，支持null值
     */
    public static FmkMessageId ofNullable(Long value) {
        return ofNullable(value, FmkMessageId::new);
    }

    /**
     * 从 Integer 创建，支持 null 值
     */
    public static FmkMessageId ofNullable(Integer value) {
        return ofNullable(value != null ? value.longValue() : null, FmkMessageId::new);
    }

    /**
     * 从Object值创建UserId，支持JSON反序列化
     */
    public static FmkMessageId ofNullable(Object value) {
        return ofNullableObject(value, FmkMessageId::new, Long.class);
    }

    /**
     * 从Long创建UserId，不允许null值
     */
    public static FmkMessageId of(Long value) {
        if (value == null) {
            throw new IllegalArgumentException("UserId cannot be null");
        }
        return new FmkMessageId(value);
    }

    /**
     * 从 Integer 创建（不允许 null）
     */
    public static FmkMessageId of(Integer value) {
        if (value == null) {
            throw new IllegalArgumentException("FmkMessageId cannot be null");
        }
        return new FmkMessageId(value.longValue());
    }

    /**
     * 从int创建UserId
     */
    public static FmkMessageId of(int value) {
        return new FmkMessageId((long) value);
    }

    /**
     * 从字符串创建UserId
     */
    public static FmkMessageId fromString(String value) {
        if (value == null || value.isEmpty()) {
            throw new IllegalArgumentException("UserId string cannot be null or empty");
        }
        try {
            return new FmkMessageId(Long.parseLong(value));
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("Invalid UserId format: " + value, e);
        }
    }

    public FmkMessageId(Long value) {
        super(value);
        if (value == null) {
            throw new IllegalArgumentException("UserId cannot be null");
        }
    }

    /**
     * 私有构造函数（int）
     */
    public FmkMessageId(int value) {
        this((long) value);
    }

    @Override
    protected FmkMessageId newInstance(Long value) {
        return new FmkMessageId(value);
    }

}