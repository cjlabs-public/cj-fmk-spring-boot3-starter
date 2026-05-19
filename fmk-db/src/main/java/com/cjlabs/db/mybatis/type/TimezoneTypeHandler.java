package com.cjlabs.db.mybatis.type;

import com.cjlabs.core.types.system.strings.FmkTimezone;
import com.cjlabs.db.mybatis.handler.StringTypeHandler;
import org.apache.ibatis.type.MappedTypes;

/**
 * Timezone类型处理器
 */
@MappedTypes(FmkTimezone.class)
public class TimezoneTypeHandler extends StringTypeHandler<FmkTimezone> {

    public TimezoneTypeHandler() {
        super(FmkTimezone.class, FmkTimezone::of);
    }
}
