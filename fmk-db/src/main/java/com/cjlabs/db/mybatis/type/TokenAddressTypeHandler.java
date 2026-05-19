package com.cjlabs.db.mybatis.type;

import com.cjlabs.core.types.crypto.strings.FmkTokenAddress;
import com.cjlabs.db.mybatis.handler.StringTypeHandler;
import org.apache.ibatis.type.MappedTypes;

/**
 * TokenAddress类型处理器
 */
@MappedTypes(FmkTokenAddress.class)
public class TokenAddressTypeHandler extends StringTypeHandler<FmkTokenAddress> {

    public TokenAddressTypeHandler() {
        super(FmkTokenAddress.class, FmkTokenAddress::of);
    }
}
