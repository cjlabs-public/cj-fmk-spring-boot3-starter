package com.cjlabs.core.types.crypto.strings;

import com.cjlabs.core.id.FmkSnowflakeIdGenerator;
import com.cjlabs.core.types.base.BaseStringType;

import org.apache.commons.lang3.StringUtils;

import java.util.regex.Pattern;

/**
 * 令牌类型安全包装类
 * 提供系统中身份验证和授权的令牌管理
 */
public class FmkTokenAddress extends BaseStringType<FmkTokenAddress> {

    private static final String TOKEN_PREFIX = "TOKEN_ADDRESS_";

    // Token 格式正则表达式
    private static final Pattern TOKEN_PATTERN = Pattern.compile(
            "^TOKEN_[a-zA-Z0-9\\-_]{16,64}$"
    );

    // ==================== 静态工厂方法 ====================

    /**
     * 从字符串创建Token，支持null值
     */
    public static FmkTokenAddress ofNullable(String value) {
        return ofNullable(value, FmkTokenAddress::new);
    }

    /**
     * 从Object值创建Token，支持JSON反序列化
     */
    public static FmkTokenAddress ofNullable(Object value) {
        return ofNullableObject(value, FmkTokenAddress::new, String.class);
    }

    /**
     * 从字符串创建Token，不允许null或空值
     */
    public static FmkTokenAddress of(String value) {
        if (StringUtils.isBlank(value)) {
            throw new IllegalArgumentException("Token cannot be null or empty");
        }
        return new FmkTokenAddress(value.trim());
    }

    /**
     * 生成一个新的基本Token
     */
    public static FmkTokenAddress generate() {
        return new FmkTokenAddress(TOKEN_PREFIX + FmkSnowflakeIdGenerator.nextId());
    }


    /**
     * 生成一个自定义Token
     */
    public static FmkTokenAddress generateCustomPrefix(String prefix) {
        if (StringUtils.isBlank(prefix)) {
            throw new IllegalArgumentException("Suffix cannot be null or empty");
        }
        String randomPart = FmkSnowflakeIdGenerator.nextIdStr();
        return new FmkTokenAddress(prefix + randomPart);
    }


    // ==================== 构造方法 ====================

    public FmkTokenAddress(String value) {
        super(value);
        if (StringUtils.isBlank(value)) {
            throw new IllegalArgumentException("Token cannot be null or empty");
        }
        if (!isValidFormat(value.trim())) {
            throw new IllegalArgumentException("Invalid Token format: " + value);
        }
    }

    @Override
    protected FmkTokenAddress newInstance(String value) {
        return new FmkTokenAddress(value);
    }

    // ==================== Token 类型判断 ====================

    /**
     * 检查Token格式是否有效
     */
    private static boolean isValidFormat(String value) {
        return TOKEN_PATTERN.matcher(value).matches();
    }

    /**
     * 检查是否包含时间戳信息
     */
    public boolean hasTimestamp() {
        return value.contains("-") && value.split("-").length >= 2;
    }

    // ==================== Token 操作 ====================

    /**
     * 获取不带前缀的Token值
     */
    public String convertTokenWithoutPrefix() {
        return value.substring(TOKEN_PREFIX.length());
    }

    /**
     * 获取Token的简短形式（前8个字符，包含前缀）
     */
    public String convertShort() {
        return value.length() > TOKEN_PREFIX.length() + 8 ?
                value.substring(0, TOKEN_PREFIX.length() + 8) : value;
    }

}