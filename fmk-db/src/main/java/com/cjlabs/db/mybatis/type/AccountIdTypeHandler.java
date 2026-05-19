package com.cjlabs.db.mybatis.type;

import com.cjlabs.core.types.tg.longs.FmkTgAccountId;
import com.cjlabs.db.mybatis.handler.LongTypeHandler;
import org.apache.ibatis.type.MappedTypes;

/**
 * AccountId类型处理器
 */
@MappedTypes(FmkTgAccountId.class)
public class AccountIdTypeHandler extends LongTypeHandler<FmkTgAccountId> {

    public AccountIdTypeHandler() {
        super(FmkTgAccountId::of);
    }
}
