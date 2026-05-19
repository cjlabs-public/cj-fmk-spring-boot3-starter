package com.cjlabs.db.mybatis.type;

import com.cjlabs.core.types.system.strings.FmkCountryCode;
import com.cjlabs.db.mybatis.handler.StringTypeHandler;
import org.apache.ibatis.type.MappedTypes;

/**
 * CountryCode类型处理器
 */
@MappedTypes(FmkCountryCode.class)
public class CountryCodeTypeHandler extends StringTypeHandler<FmkCountryCode> {

    public CountryCodeTypeHandler() {
        super(FmkCountryCode.class, FmkCountryCode::of);
    }
}
