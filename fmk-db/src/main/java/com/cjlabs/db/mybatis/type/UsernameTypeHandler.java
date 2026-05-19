package com.cjlabs.db.mybatis.type;

import com.cjlabs.core.types.system.strings.FmkUsername;
import com.cjlabs.db.mybatis.handler.StringTypeHandler;
import org.apache.ibatis.type.MappedTypes;

/**
 * Username类型处理器
 */
@MappedTypes(FmkUsername.class)
public class UsernameTypeHandler extends StringTypeHandler<FmkUsername> {

    public UsernameTypeHandler() {
        super(FmkUsername.class, FmkUsername::of);
    }
}
