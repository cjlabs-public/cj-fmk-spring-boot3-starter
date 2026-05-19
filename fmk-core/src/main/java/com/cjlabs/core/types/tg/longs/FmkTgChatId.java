package com.cjlabs.core.types.tg.longs;


import com.cjlabs.core.types.base.BaseLongType;

/**
 * 用户ID类型安全包装类
 */
public class FmkTgChatId extends BaseLongType<FmkTgChatId> {

    /**
     * 从Long创建UserId，支持null值
     */
    public static FmkTgChatId ofNullable(Long value) {
        return ofNullable(value, FmkTgChatId::new);
    }

    /**
     * 从Object值创建UserId，支持JSON反序列化
     */
    public static FmkTgChatId ofNullable(Object value) {
        return ofNullableObject(value, FmkTgChatId::new, Long.class);
    }

    /**
     * 从Long创建UserId，不允许null值
     */
    public static FmkTgChatId of(Long value) {
        if (value == null) {
            throw new IllegalArgumentException("UserId cannot be null");
        }
        return new FmkTgChatId(value);
    }

    /**
     * 从int创建UserId
     */
    public static FmkTgChatId of(int value) {
        return new FmkTgChatId((long) value);
    }

    /**
     * 从字符串创建UserId
     */
    public static FmkTgChatId fromString(String value) {
        if (value == null || value.isEmpty()) {
            throw new IllegalArgumentException("UserId string cannot be null or empty");
        }
        try {
            return new FmkTgChatId(Long.parseLong(value));
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("Invalid UserId format: " + value, e);
        }
    }

    public FmkTgChatId(Long value) {
        super(value);
        if (value == null) {
            throw new IllegalArgumentException("UserId cannot be null");
        }
    }

    @Override
    protected FmkTgChatId newInstance(Long value) {
        return new FmkTgChatId(value);
    }

}