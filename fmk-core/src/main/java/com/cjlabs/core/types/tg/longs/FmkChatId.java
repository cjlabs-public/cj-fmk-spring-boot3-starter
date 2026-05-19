package com.cjlabs.core.types.tg.longs;


import com.cjlabs.core.types.base.BaseLongType;

/**
 * 用户ID类型安全包装类
 */
public class FmkChatId extends BaseLongType<FmkChatId> {

    /**
     * 从Long创建UserId，支持null值
     */
    public static FmkChatId ofNullable(Long value) {
        return ofNullable(value, FmkChatId::new);
    }

    /**
     * 从Object值创建UserId，支持JSON反序列化
     */
    public static FmkChatId ofNullable(Object value) {
        return ofNullableObject(value, FmkChatId::new, Long.class);
    }

    /**
     * 从Long创建UserId，不允许null值
     */
    public static FmkChatId of(Long value) {
        if (value == null) {
            throw new IllegalArgumentException("UserId cannot be null");
        }
        return new FmkChatId(value);
    }

    /**
     * 从int创建UserId
     */
    public static FmkChatId of(int value) {
        return new FmkChatId((long) value);
    }

    /**
     * 从字符串创建UserId
     */
    public static FmkChatId fromString(String value) {
        if (value == null || value.isEmpty()) {
            throw new IllegalArgumentException("UserId string cannot be null or empty");
        }
        try {
            return new FmkChatId(Long.parseLong(value));
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("Invalid UserId format: " + value, e);
        }
    }

    public FmkChatId(Long value) {
        super(value);
        if (value == null) {
            throw new IllegalArgumentException("UserId cannot be null");
        }
    }

    @Override
    protected FmkChatId newInstance(Long value) {
        return new FmkChatId(value);
    }

}