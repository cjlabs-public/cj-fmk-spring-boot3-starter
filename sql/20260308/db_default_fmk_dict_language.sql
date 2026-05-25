
# ----------------------------------------------------
# 多语言
# ----------------------------------------------------

INSERT INTO fmk_dict
(dict_type, dict_key, sort_order, status, remark, del_flag, create_user, create_date, update_user, update_date, trace_id)
VALUES
    ('fmk_language', 'ZH_CN', 1, 'NORMAL', '', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_language', 'ZH_TW', 2, 'NORMAL', '', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_language', 'EN_US', 3, 'NORMAL', '', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_language', 'EN_GB', 4, 'NORMAL', '', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT');

-- ZH_CN (简体中文)
INSERT INTO fmk_dict_i18n
(dict_type, dict_key, language_code, dict_value, sort_order,remark, del_flag, create_user, create_date, update_user, update_date, trace_id)
VALUES
    ('fmk_language', 'ZH_CN', 'ZH_CN', '简体中文', 1, '简体中文', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_language', 'ZH_TW', 'ZH_CN', '繁体中文', 2,'繁体中文', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_language', 'EN_US', 'ZH_CN', '英语(美国)', 3, '美式英语', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_language', 'EN_GB', 'ZH_CN', '英语(英国)', 4, '英式英语', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT');

-- ZH_TW (繁体中文)
INSERT INTO fmk_dict_i18n
(dict_type, dict_key, language_code, dict_value,sort_order, remark, del_flag, create_user, create_date, update_user, update_date, trace_id)
VALUES
    ('fmk_language', 'ZH_CN', 'ZH_TW', '簡體中文', 1, '簡體中文', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_language', 'ZH_TW', 'ZH_TW', '繁體中文', 2, '繁體中文', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_language', 'EN_US', 'ZH_TW', '英語(美國)', 3, '美式英語', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_language', 'EN_GB', 'ZH_TW', '英語(英國)', 4, '英式英語', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT');

-- EN_US (English United States)
INSERT INTO fmk_dict_i18n
(dict_type, dict_key, language_code, dict_value, sort_order, remark, del_flag, create_user, create_date, update_user, update_date, trace_id)
VALUES
    ('fmk_language', 'ZH_CN', 'EN_US', 'Simplified Chinese', 1, '简体中文', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_language', 'ZH_TW', 'EN_US', 'Traditional Chinese', 2, '繁体中文', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_language', 'EN_US', 'EN_US', 'English (United States)', 3, '美式英语', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_language', 'EN_GB', 'EN_US', 'English (United Kingdom)', 4, '英式英语', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT');

-- EN_GB (English United Kingdom)
INSERT INTO fmk_dict_i18n
(dict_type, dict_key, language_code, dict_value, sort_order,remark, del_flag, create_user, create_date, update_user, update_date, trace_id)
VALUES
    ('fmk_language', 'ZH_CN', 'EN_GB', 'Simplified Chinese', 1, '简体中文', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_language', 'ZH_TW', 'EN_GB', 'Traditional Chinese', 2,'繁体中文', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_language', 'EN_US', 'EN_GB', 'English (United States)', 3,'美式英语', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_language', 'EN_GB', 'EN_GB', 'English (United Kingdom)', 4,'英式英语', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT');
