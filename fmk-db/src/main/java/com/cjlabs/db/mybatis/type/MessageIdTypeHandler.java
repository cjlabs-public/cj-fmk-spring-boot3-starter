package com.cjlabs.db.mybatis.type;

import com.cjlabs.core.types.tg.longs.FmkTgMessageId;
import com.cjlabs.db.mybatis.handler.LongTypeHandler;
import org.apache.ibatis.type.MappedTypes;

/**
 * MessageId类型处理器
 */
@MappedTypes(FmkTgMessageId.class)
public class MessageIdTypeHandler extends LongTypeHandler<FmkTgMessageId> {

    public MessageIdTypeHandler() {
        super(FmkTgMessageId::of);
    }
}
