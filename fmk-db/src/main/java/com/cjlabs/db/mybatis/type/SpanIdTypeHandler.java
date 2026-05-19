package com.cjlabs.db.mybatis.type;

import com.cjlabs.core.types.system.strings.FmkSpanId;
import com.cjlabs.db.mybatis.handler.StringTypeHandler;
import org.apache.ibatis.type.MappedTypes;

/**
 * SpanId类型处理器
 */
@MappedTypes(FmkSpanId.class)
public class SpanIdTypeHandler extends StringTypeHandler<FmkSpanId> {

    public SpanIdTypeHandler() {
        super(FmkSpanId.class, FmkSpanId::ofNullable);
    }
}
