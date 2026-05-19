package com.cjlabs.db.mybatis.type;

import com.cjlabs.core.types.crypto.strings.FmkCurrencyCode;
import com.cjlabs.db.mybatis.handler.StringTypeHandler;
import org.apache.ibatis.type.MappedTypes;

/**
 * Crypto CurrencyCode类型处理器
 */
@MappedTypes(FmkCurrencyCode.class)
public class CryptoCurrencyCodeTypeHandler extends StringTypeHandler<FmkCurrencyCode> {

    public CryptoCurrencyCodeTypeHandler() {
        super(FmkCurrencyCode.class, FmkCurrencyCode::of);
    }
}
