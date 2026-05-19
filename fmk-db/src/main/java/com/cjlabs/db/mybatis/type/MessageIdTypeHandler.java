package com.cjlabs.db.mybatis.type;

import com.cjlabs.core.types.tg.longs.FmkMessageId;
import com.cjlabs.db.mybatis.handler.LongTypeHandler;
import org.apache.ibatis.type.MappedTypes;

/**
 * MessageId类型处理器
 */
@MappedTypes(FmkMessageId.class)
public class MessageIdTypeHandler extends LongTypeHandler<FmkMessageId> {

    public MessageIdTypeHandler() {
        super(FmkMessageId::of);
    }
}
