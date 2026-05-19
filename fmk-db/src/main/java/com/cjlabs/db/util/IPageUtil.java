package com.cjlabs.db.util;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.cjlabs.core.collection.FmkCollectionUtil;

import java.util.List;
import java.util.Objects;

public class IPageUtil {

    public static <T> IPage<T> emptyIfNullReturnNewList(IPage<T> input) {
        if (Objects.isNull(input)) {
            return input;
        }
        List<T> records = input.getRecords();
        List<T> newList = FmkCollectionUtil.emptyIfNullReturnNewList(records);
        input.setRecords(newList);
        return input;
    }

}
