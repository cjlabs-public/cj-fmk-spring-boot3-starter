package com.cjlabs.core.types.tg.longs;


import com.cjlabs.core.types.base.BaseLongType;

/**
 * 用户ID类型安全包装类
 */
public class FmkTgMessageId extends BaseLongType<FmkTgMessageId> {

    /**
     * 从Long创建UserId，支持null值
     */
    public static FmkTgMessageId ofNullable(Long value) {
        return ofNullable(value, FmkTgMessageId::new);
    }

    /**
     * 从 Integer 创建，支持 null 值
     */
    public static FmkTgMessageId ofNullable(Integer value) {
        return ofNullable(value != null ? value.longValue() : null, FmkTgMessageId::new);
    }

    /**
     * 从Object值创建UserId，支持JSON反序列化
     */
    public static FmkTgMessageId ofNullable(Object value) {
        return ofNullableObject(value, FmkTgMessageId::new, Long.class);
    }

    /**
     * 从Long创建UserId，不允许null值
     */
    public static FmkTgMessageId of(Long value) {
        if (value == null) {
            throw new IllegalArgumentException("UserId cannot be null");
        }
        return new FmkTgMessageId(value);
    }

    /**
     * 从 Integer 创建（不允许 null）
     */
    public static FmkTgMessageId of(Integer value) {
        if (value == null) {
            throw new IllegalArgumentException("FmkMessageId cannot be null");
        }
        return new FmkTgMessageId(value.longValue());
    }

    /**
     * 从int创建UserId
     */
    public static FmkTgMessageId of(int value) {
        return new FmkTgMessageId((long) value);
    }

    /**
     * 从字符串创建UserId
     */
    public static FmkTgMessageId fromString(String value) {
        if (value == null || value.isEmpty()) {
            throw new IllegalArgumentException("UserId string cannot be null or empty");
        }
        try {
            return new FmkTgMessageId(Long.parseLong(value));
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("Invalid UserId format: " + value, e);
        }
    }

    public FmkTgMessageId(Long value) {
        super(value);
        if (value == null) {
            throw new IllegalArgumentException("UserId cannot be null");
        }
    }

    /**
     * 私有构造函数（int）
     */
    public FmkTgMessageId(int value) {
        this((long) value);
    }

    @Override
    protected FmkTgMessageId newInstance(Long value) {
        return new FmkTgMessageId(value);
    }

}