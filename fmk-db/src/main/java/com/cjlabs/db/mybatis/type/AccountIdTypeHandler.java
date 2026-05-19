package com.cjlabs.db.mybatis.type;

import com.cjlabs.core.types.tg.longs.FmkAccountId;
import com.cjlabs.db.mybatis.handler.LongTypeHandler;
import org.apache.ibatis.type.MappedTypes;

/**
 * AccountId类型处理器
 */
@MappedTypes(FmkAccountId.class)
public class AccountIdTypeHandler extends LongTypeHandler<FmkAccountId> {

    public AccountIdTypeHandler() {
        super(FmkAccountId::of);
    }
}
