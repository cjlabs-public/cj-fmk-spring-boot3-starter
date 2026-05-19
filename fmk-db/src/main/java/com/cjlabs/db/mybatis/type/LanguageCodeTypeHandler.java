package com.cjlabs.db.mybatis.type;

import com.cjlabs.core.types.system.strings.FmkLanguageCode;
import com.cjlabs.db.mybatis.handler.StringTypeHandler;
import org.apache.ibatis.type.MappedTypes;

/**
 * LanguageCode类型处理器
 */
@MappedTypes(FmkLanguageCode.class)
public class LanguageCodeTypeHandler extends StringTypeHandler<FmkLanguageCode> {

    public LanguageCodeTypeHandler() {
        super(FmkLanguageCode.class, FmkLanguageCode::of);
    }
}
