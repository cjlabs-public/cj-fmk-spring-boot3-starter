package com.cjlabs.db.mybatis.type;

import com.cjlabs.core.types.tg.longs.FmkChatId;
import com.cjlabs.db.mybatis.handler.LongTypeHandler;
import org.apache.ibatis.type.MappedTypes;

/**
 * ChatId类型处理器
 */
@MappedTypes(FmkChatId.class)
public class ChatIdTypeHandler extends LongTypeHandler<FmkChatId> {

    public ChatIdTypeHandler() {
        super(FmkChatId::of);
    }
}
