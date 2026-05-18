
# ----------------------------------------------------
# 多语言
# ----------------------------------------------------

INSERT INTO fmk_dict (dict_type,
                      dict_key,
                      sort_order,
                      status,
                      remark,
                      del_flag,
                      create_user,
                      create_date,
                      update_user,
                      update_date,
                      trace_id)
VALUES ('fmk_language', 'ZH_CN', 1, 'NORMAL', '', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
       ('fmk_language', 'ZH_TW', 2, 'NORMAL', '', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
       ('fmk_language', 'EN_US', 3, 'NORMAL', '', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT')
;


INSERT INTO fmk_dict_i18n (dict_type,
                           dict_key,
                           language_code,
                           dict_value,
                           remark,
                           del_flag,
                           create_user,
                           create_date,
                           update_user,
                           update_date,
                           trace_id)
VALUES
-- MALE
('fmk_language', 'ZH_CN', 'ZH_CN', '简体中文', '简体中文', 'NORMAL', '0', 1762560000000, '0', 1762560000000,
 'TRACE_INIT'),
('fmk_language', 'ZH_TW', 'ZH_TW', '繁体中文', '繁体中文', 'NORMAL', '0', 1762560000000, '0', 1762560000000,
 'TRACE_INIT'),
('fmk_language', 'EN_US', 'EN_US', 'English (United States)', '美式英语', 'NORMAL', '0', 1762560000000, '0',
 1762560000000, 'TRACE_INIT'),
('fmk_language', 'EN_GB', 'EN_GB', 'English (United Kingdom)', '英式英语', 'NORMAL', '0', 1762560000000, '0',
 1762560000000, 'TRACE_INIT')
;

# ----------------------------------------------------
# 时区
# ----------------------------------------------------

INSERT INTO fmk_dict (dict_type,
                      dict_key,
                      sort_order,
                      status,
                      remark,
                      del_flag,
                      create_user,
                      create_date,
                      update_user,
                      update_date,
                      trace_id)
VALUES
    ('fmk_timezone', 'Asia/Shanghai', 1, 'NORMAL', 'China Standard Time UTC+08:00', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Taipei', 2, 'NORMAL', 'Taipei Time UTC+08:00', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Hong_Kong', 3, 'NORMAL', 'Hong Kong Time UTC+08:00', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Singapore', 4, 'NORMAL', 'Singapore Time UTC+08:00', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_timezone', 'America/New_York', 5, 'NORMAL', 'Eastern Time UTC-05:00', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'America/Chicago', 6, 'NORMAL', 'Central Time UTC-06:00', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'America/Denver', 7, 'NORMAL', 'Mountain Time UTC-07:00', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'America/Los_Angeles', 8, 'NORMAL', 'Pacific Time UTC-08:00', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_timezone', 'Europe/London', 9, 'NORMAL', 'London Time UTC+00:00', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Europe/Paris', 10, 'NORMAL', 'Central European Time UTC+01:00', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Europe/Berlin', 11, 'NORMAL', 'Germany Time UTC+01:00', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Europe/Moscow', 12, 'NORMAL', 'Moscow Time UTC+03:00', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_timezone', 'Asia/Tokyo', 13, 'NORMAL', 'Japan Time UTC+09:00', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Seoul', 14, 'NORMAL', 'Korea Standard Time UTC+09:00', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_timezone', 'Asia/Bangkok', 15, 'NORMAL', 'Thailand Time UTC+07:00', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Ho_Chi_Minh', 16, 'NORMAL', 'Vietnam Time UTC+07:00', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Jakarta', 17, 'NORMAL', 'Western Indonesia Time UTC+07:00', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Kuala_Lumpur', 18, 'NORMAL', 'Malaysia Time UTC+08:00', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Manila', 19, 'NORMAL', 'Philippines Time UTC+08:00', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Phnom_Penh', 20, 'NORMAL', 'Cambodia Time UTC+07:00', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Vientiane', 21, 'NORMAL', 'Laos Time UTC+07:00', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Yangon', 22, 'NORMAL', 'Myanmar Time UTC+06:30', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_timezone', 'Asia/Kolkata', 23, 'NORMAL', 'India Time UTC+05:30', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Dhaka', 24, 'NORMAL', 'Bangladesh Time UTC+06:00', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Karachi', 25, 'NORMAL', 'Pakistan Time UTC+05:00', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Kathmandu', 26, 'NORMAL', 'Nepal Time UTC+05:45', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Colombo', 27, 'NORMAL', 'Sri Lanka Time UTC+05:30', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_timezone', 'Asia/Riyadh', 28, 'NORMAL', 'Saudi Arabia Time UTC+03:00', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Dubai', 29, 'NORMAL', 'United Arab Emirates Time UTC+04:00', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Jerusalem', 30, 'NORMAL', 'Israel Time UTC+02:00', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT')
;

INSERT INTO fmk_dict_i18n (dict_type,
                           dict_key,
                           language_code,
                           dict_value,
                           remark,
                           del_flag,
                           create_user,
                           create_date,
                           update_user,
                           update_date,
                           trace_id)
VALUES
    ('fmk_timezone', 'Asia/Shanghai', 'ZH_CN', '中国大陆标准时间 (UTC+08:00)', '中国标准时间', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Shanghai', 'ZH_TW', '台湾標準時間 (UTC+08:00)', '中國標準時間', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Shanghai', 'EN_US', 'China Standard Time (UTC+08:00)', 'China Standard Time', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Shanghai', 'EN_GB', 'China Standard Time (UTC+08:00)', 'China Standard Time', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_timezone', 'Asia/Taipei', 'ZH_CN', '台北时间 (UTC+08:00)', '台北时间', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Taipei', 'ZH_TW', '台北時間 (UTC+08:00)', '台北時間', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Taipei', 'EN_US', 'Taipei Time (UTC+08:00)', 'Taipei Time', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Taipei', 'EN_GB', 'Taipei Time (UTC+08:00)', 'Taipei Time', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_timezone', 'Asia/Hong_Kong', 'ZH_CN', '香港时间 (UTC+08:00)', '香港时间', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Hong_Kong', 'ZH_TW', '香港時間 (UTC+08:00)', '香港時間', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Hong_Kong', 'EN_US', 'Hong Kong Time (UTC+08:00)', 'Hong Kong Time', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Hong_Kong', 'EN_GB', 'Hong Kong Time (UTC+08:00)', 'Hong Kong Time', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_timezone', 'Asia/Singapore', 'ZH_CN', '新加坡时间 (UTC+08:00)', '新加坡时间', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Singapore', 'ZH_TW', '新加坡時間 (UTC+08:00)', '新加坡時間', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Singapore', 'EN_US', 'Singapore Time (UTC+08:00)', 'Singapore Time', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Singapore', 'EN_GB', 'Singapore Time (UTC+08:00)', 'Singapore Time', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_timezone', 'America/New_York', 'ZH_CN', '美国东部时间 (UTC-05:00)', '美国东部时间', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'America/New_York', 'ZH_TW', '美國東部時間 (UTC-05:00)', '美國東部時間', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'America/New_York', 'EN_US', 'Eastern Time (UTC-05:00)', 'Eastern Time', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'America/New_York', 'EN_GB', 'Eastern Time (UTC-05:00)', 'Eastern Time', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_timezone', 'America/Chicago', 'ZH_CN', '美国中部时间 (UTC-06:00)', '美国中部时间', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'America/Chicago', 'ZH_TW', '美國中部時間 (UTC-06:00)', '美國中部時間', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'America/Chicago', 'EN_US', 'Central Time (UTC-06:00)', 'Central Time', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'America/Chicago', 'EN_GB', 'Central Time (UTC-06:00)', 'Central Time', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_timezone', 'America/Denver', 'ZH_CN', '美国山地时间 (UTC-07:00)', '美国山地时间', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'America/Denver', 'ZH_TW', '美國山地時間 (UTC-07:00)', '美國山地時間', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'America/Denver', 'EN_US', 'Mountain Time (UTC-07:00)', 'Mountain Time', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'America/Denver', 'EN_GB', 'Mountain Time (UTC-07:00)', 'Mountain Time', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_timezone', 'America/Los_Angeles', 'ZH_CN', '美国太平洋时间 (UTC-08:00)', '美国太平洋时间', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'America/Los_Angeles', 'ZH_TW', '美國太平洋時間 (UTC-08:00)', '美國太平洋時間', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'America/Los_Angeles', 'EN_US', 'Pacific Time (UTC-08:00)', 'Pacific Time', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'America/Los_Angeles', 'EN_GB', 'Pacific Time (UTC-08:00)', 'Pacific Time', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_timezone', 'Europe/London', 'ZH_CN', '伦敦时间 (UTC+00:00)', '伦敦时间', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Europe/London', 'ZH_TW', '倫敦時間 (UTC+00:00)', '倫敦時間', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Europe/London', 'EN_US', 'London Time (UTC+00:00)', 'London Time', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Europe/London', 'EN_GB', 'London Time (UTC+00:00)', 'London Time', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_timezone', 'Europe/Paris', 'ZH_CN', '中欧时间 (UTC+01:00)', '中欧时间', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Europe/Paris', 'ZH_TW', '中歐時間 (UTC+01:00)', '中歐時間', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Europe/Paris', 'EN_US', 'Central European Time (UTC+01:00)', 'Central European Time', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Europe/Paris', 'EN_GB', 'Central European Time (UTC+01:00)', 'Central European Time', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_timezone', 'Europe/Berlin', 'ZH_CN', '德国时间 (UTC+01:00)', '德国时间', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Europe/Berlin', 'ZH_TW', '德國時間 (UTC+01:00)', '德國時間', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Europe/Berlin', 'EN_US', 'Germany Time (UTC+01:00)', 'Germany Time', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Europe/Berlin', 'EN_GB', 'Germany Time (UTC+01:00)', 'Germany Time', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_timezone', 'Europe/Moscow', 'ZH_CN', '莫斯科时间 (UTC+03:00)', '莫斯科时间', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Europe/Moscow', 'ZH_TW', '莫斯科時間 (UTC+03:00)', '莫斯科時間', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Europe/Moscow', 'EN_US', 'Moscow Time (UTC+03:00)', 'Moscow Time', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Europe/Moscow', 'EN_GB', 'Moscow Time (UTC+03:00)', 'Moscow Time', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_timezone', 'Asia/Tokyo', 'ZH_CN', '日本时间 (UTC+09:00)', '日本时间', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Tokyo', 'ZH_TW', '日本時間 (UTC+09:00)', '日本時間', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Tokyo', 'EN_US', 'Japan Time (UTC+09:00)', 'Japan Time', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Tokyo', 'EN_GB', 'Japan Time (UTC+09:00)', 'Japan Time', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_timezone', 'Asia/Seoul', 'ZH_CN', '韩国标准时间 (UTC+09:00)', '韩国标准时间', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Seoul', 'ZH_TW', '韓國標準時間 (UTC+09:00)', '韓國標準時間', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Seoul', 'EN_US', 'Korea Standard Time (UTC+09:00)', 'Korea Standard Time', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_timezone', 'Asia/Seoul', 'EN_GB', 'Korea Standard Time (UTC+09:00)', 'Korea Standard Time', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT');




