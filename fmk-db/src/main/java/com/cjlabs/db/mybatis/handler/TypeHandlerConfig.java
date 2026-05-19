package com.cjlabs.db.mybatis.handler;

import com.cjlabs.core.types.crypto.strings.FmkTokenAddress;
import com.cjlabs.core.types.crypto.strings.FmkTxHash;
import com.cjlabs.core.types.crypto.strings.FmkWalletAddress;
import com.cjlabs.core.types.system.decimal.FmkAmount;
import com.cjlabs.core.types.system.longs.FmkUserId;
import com.cjlabs.core.types.system.strings.FmkCountryCode;
import com.cjlabs.core.types.system.strings.FmkCurrencyCode;
import com.cjlabs.core.types.system.strings.FmkLanguageCode;
import com.cjlabs.core.types.system.strings.FmkOrderId;
import com.cjlabs.core.types.system.strings.FmkSpanId;
import com.cjlabs.core.types.system.strings.FmkTimezone;
import com.cjlabs.core.types.system.strings.FmkToken;
import com.cjlabs.core.types.system.strings.FmkTraceId;
import com.cjlabs.core.types.system.strings.FmkUsername;
import com.cjlabs.core.types.tg.longs.FmkAccountId;
import com.cjlabs.core.types.tg.longs.FmkChatId;
import com.cjlabs.core.types.tg.longs.FmkMessageId;
import com.cjlabs.db.mybatis.type.*;

import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.AutoConfiguration;
import org.springframework.context.ApplicationListener;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.DependsOn;
import org.springframework.context.event.ContextRefreshedEvent;

import java.time.Instant;

/**
 * 类型处理器配置
 * 🔥 使用 ApplicationListener 在容器完全启动后注册，避免循环依赖
 */
@Slf4j
@Configuration
@AutoConfiguration
@DependsOn("sqlSessionFactory")  // 🔥 确保在 SqlSessionFactory 创建后才初始化
public class TypeHandlerConfig implements ApplicationListener<ContextRefreshedEvent> {

    @Autowired(required = false)  // 🔥 设置为非必需，进一步避免循环依赖
    private SqlSessionFactory sqlSessionFactory;

    private boolean typeHandlersRegistered = false;

    @Override
    public void onApplicationEvent(ContextRefreshedEvent event) {
        // 防止多次执行
        if (typeHandlersRegistered) {
            return;
        }

        if (sqlSessionFactory == null) {
            log.warn("TypeHandlerConfig|onApplicationEvent|SqlSessionFactory 未注入，跳过类型处理器注册");
            return;
        }

        log.info("TypeHandlerConfig|onApplicationEvent|开始注册所有自定义类型处理器");
        registerTypeHandlers();
        typeHandlersRegistered = true;
        log.info("TypeHandlerConfig|onApplicationEvent|所有类型处理器注册完成");
    }

    private void registerTypeHandlers() {
        // 🔥 注册 Instant 类型处理器（最重要！）
        sqlSessionFactory.getConfiguration()
                .getTypeHandlerRegistry()
                .register(Instant.class, InstantEpochMilliTypeHandler.class);
        log.info("  ✅ 已注册: Instant -> InstantEpochMilliTypeHandler");

        // 注册字符串类型处理器
        sqlSessionFactory.getConfiguration()
                .getTypeHandlerRegistry()
                .register(FmkTraceId.class, FmkTraceIdTypeHandler.class);
        log.info("  ✅ 已注册: FmkTraceId -> FmkTraceIdTypeHandler");

        sqlSessionFactory.getConfiguration()
                .getTypeHandlerRegistry()
                .register(FmkSpanId.class, SpanIdTypeHandler.class);
        log.info("  ✅ 已注册: FmkSpanId -> SpanIdTypeHandler");

        sqlSessionFactory.getConfiguration()
                .getTypeHandlerRegistry()
                .register(FmkOrderId.class, OrderIdTypeHandler.class);
        log.info("  ✅ 已注册: FmkOrderId -> OrderIdTypeHandler");

        sqlSessionFactory.getConfiguration()
                .getTypeHandlerRegistry()
                .register(FmkCurrencyCode.class, CurrencyCodeTypeHandler.class);
        log.info("  ✅ 已注册: FmkCurrencyCode -> CurrencyCodeTypeHandler");

        sqlSessionFactory.getConfiguration()
                .getTypeHandlerRegistry()
                .register(com.cjlabs.core.types.crypto.strings.FmkCurrencyCode.class,
                        CryptoCurrencyCodeTypeHandler.class);
        log.info("  ✅ 已注册: crypto.FmkCurrencyCode -> CryptoCurrencyCodeTypeHandler");

        sqlSessionFactory.getConfiguration()
                .getTypeHandlerRegistry()
                .register(FmkCountryCode.class, CountryCodeTypeHandler.class);
        log.info("  ✅ 已注册: FmkCountryCode -> CountryCodeTypeHandler");

        sqlSessionFactory.getConfiguration()
                .getTypeHandlerRegistry()
                .register(FmkLanguageCode.class, LanguageCodeTypeHandler.class);
        log.info("  ✅ 已注册: FmkLanguageCode -> LanguageCodeTypeHandler");

        sqlSessionFactory.getConfiguration()
                .getTypeHandlerRegistry()
                .register(FmkTimezone.class, TimezoneTypeHandler.class);
        log.info("  ✅ 已注册: FmkTimezone -> TimezoneTypeHandler");

        sqlSessionFactory.getConfiguration()
                .getTypeHandlerRegistry()
                .register(FmkUsername.class, UsernameTypeHandler.class);
        log.info("  ✅ 已注册: FmkUsername -> UsernameTypeHandler");

        sqlSessionFactory.getConfiguration()
                .getTypeHandlerRegistry()
                .register(FmkTxHash.class, TransactionHashTypeHandler.class);
        log.info("  ✅ 已注册: FmkTxHash -> TransactionHashTypeHandler");

        sqlSessionFactory.getConfiguration()
                .getTypeHandlerRegistry()
                .register(FmkWalletAddress.class, WalletAddressTypeHandler.class);
        log.info("  ✅ 已注册: FmkWalletAddress -> WalletAddressTypeHandler");

        sqlSessionFactory.getConfiguration()
                .getTypeHandlerRegistry()
                .register(FmkTokenAddress.class, TokenAddressTypeHandler.class);
        log.info("  ✅ 已注册: FmkTokenAddress -> TokenAddressTypeHandler");

        // 注册Long类型处理器
        sqlSessionFactory.getConfiguration()
                .getTypeHandlerRegistry()
                .register(FmkUserId.class, UserIdTypeHandler.class);
        log.info("  ✅ 已注册: FmkUserId -> UserIdTypeHandler");

        sqlSessionFactory.getConfiguration()
                .getTypeHandlerRegistry()
                .register(FmkAccountId.class, AccountIdTypeHandler.class);
        log.info("  ✅ 已注册: FmkAccountId -> AccountIdTypeHandler");

        sqlSessionFactory.getConfiguration()
                .getTypeHandlerRegistry()
                .register(FmkChatId.class, ChatIdTypeHandler.class);
        log.info("  ✅ 已注册: FmkChatId -> ChatIdTypeHandler");

        sqlSessionFactory.getConfiguration()
                .getTypeHandlerRegistry()
                .register(FmkMessageId.class, MessageIdTypeHandler.class);
        log.info("  ✅ 已注册: FmkMessageId -> MessageIdTypeHandler");

        // 注册BigDecimal类型处理器
        sqlSessionFactory.getConfiguration()
                .getTypeHandlerRegistry()
                .register(FmkAmount.class, AmountTypeHandler.class);
        log.info("  ✅ 已注册: FmkAmount -> AmountTypeHandler");

        // 🔥 注册 FmkToken 类型处理器（新增）
        sqlSessionFactory.getConfiguration()
                .getTypeHandlerRegistry()
                .register(FmkToken.class, FmkTokenTypeHandler.class);
        log.info("  ✅ 已注册: FmkToken -> FmkTokenTypeHandler");
    }
}
