package com.cjlabs.db.mybatis.type;

import com.cjlabs.core.types.tg.longs.FmkTgChatId;
import com.cjlabs.db.mybatis.handler.LongTypeHandler;
import org.apache.ibatis.type.MappedTypes;

/**
 * ChatId类型处理器
 */
@MappedTypes(FmkTgChatId.class)
public class ChatIdTypeHandler extends LongTypeHandler<FmkTgChatId> {

    public ChatIdTypeHandler() {
        super(FmkTgChatId::of);
    }
}
