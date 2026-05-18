
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
       ('fmk_language', 'EN_US', 3, 'NORMAL', '', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
       ('fmk_language', 'EN_GB', 4, 'NORMAL', '', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT')
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


# ----------------------------------------------------
# 法币 币种
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
    ('fmk_fiat_currency', 'CNY', 1, 'NORMAL', 'Chinese Yuan', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'USD', 2, 'NORMAL', 'United States Dollar', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'HKD', 3, 'NORMAL', 'Hong Kong Dollar', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'TWD', 4, 'NORMAL', 'New Taiwan Dollar', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'SGD', 5, 'NORMAL', 'Singapore Dollar', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_fiat_currency', 'JPY', 6, 'NORMAL', 'Japanese Yen', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'KRW', 7, 'NORMAL', 'South Korean Won', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_fiat_currency', 'THB', 8, 'NORMAL', 'Thai Baht', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'VND', 9, 'NORMAL', 'Vietnamese Dong', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'KHR', 10, 'NORMAL', 'Cambodian Riel', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'LAK', 11, 'NORMAL', 'Lao Kip', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'MMK', 12, 'NORMAL', 'Myanmar Kyat', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'MYR', 13, 'NORMAL', 'Malaysian Ringgit', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'PHP', 14, 'NORMAL', 'Philippine Peso', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'IDR', 15, 'NORMAL', 'Indonesian Rupiah', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_fiat_currency', 'INR', 16, 'NORMAL', 'Indian Rupee', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'BDT', 17, 'NORMAL', 'Bangladeshi Taka', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'PKR', 18, 'NORMAL', 'Pakistani Rupee', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'NPR', 19, 'NORMAL', 'Nepalese Rupee', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'LKR', 20, 'NORMAL', 'Sri Lankan Rupee', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_fiat_currency', 'EUR', 21, 'NORMAL', 'Euro', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'GBP', 22, 'NORMAL', 'British Pound Sterling', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'RUB', 23, 'NORMAL', 'Russian Ruble', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_fiat_currency', 'SAR', 24, 'NORMAL', 'Saudi Riyal', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'AED', 25, 'NORMAL', 'United Arab Emirates Dirham', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'ILS', 26, 'NORMAL', 'Israeli New Shekel', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT');

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
    ('fmk_fiat_currency', 'CNY', 'ZH_CN', '人民币', '人民币', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'CNY', 'ZH_TW', '人民幣', '人民幣', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'CNY', 'EN_US', 'Chinese Yuan', 'Chinese Yuan', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'CNY', 'EN_GB', 'Chinese Yuan', 'Chinese Yuan', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_fiat_currency', 'USD', 'ZH_CN', '美元', '美元', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'USD', 'ZH_TW', '美元', '美元', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'USD', 'EN_US', 'United States Dollar', 'United States Dollar', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'USD', 'EN_GB', 'United States Dollar', 'United States Dollar', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_fiat_currency', 'HKD', 'ZH_CN', '港币', '港币', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'HKD', 'ZH_TW', '港幣', '港幣', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'HKD', 'EN_US', 'Hong Kong Dollar', 'Hong Kong Dollar', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'HKD', 'EN_GB', 'Hong Kong Dollar', 'Hong Kong Dollar', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_fiat_currency', 'TWD', 'ZH_CN', '新台币', '新台币', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'TWD', 'ZH_TW', '新台幣', '新台幣', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'TWD', 'EN_US', 'New Taiwan Dollar', 'New Taiwan Dollar', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'TWD', 'EN_GB', 'New Taiwan Dollar', 'New Taiwan Dollar', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_fiat_currency', 'SGD', 'ZH_CN', '新加坡元', '新加坡元', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'SGD', 'ZH_TW', '新加坡元', '新加坡元', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'SGD', 'EN_US', 'Singapore Dollar', 'Singapore Dollar', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'SGD', 'EN_GB', 'Singapore Dollar', 'Singapore Dollar', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_fiat_currency', 'JPY', 'ZH_CN', '日元', '日元', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'JPY', 'ZH_TW', '日圓', '日圓', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'JPY', 'EN_US', 'Japanese Yen', 'Japanese Yen', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'JPY', 'EN_GB', 'Japanese Yen', 'Japanese Yen', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_fiat_currency', 'KRW', 'ZH_CN', '韩元', '韩元', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'KRW', 'ZH_TW', '韓元', '韓元', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'KRW', 'EN_US', 'South Korean Won', 'South Korean Won', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'KRW', 'EN_GB', 'South Korean Won', 'South Korean Won', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_fiat_currency', 'THB', 'ZH_CN', '泰铢', '泰铢', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'THB', 'ZH_TW', '泰銖', '泰銖', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'THB', 'EN_US', 'Thai Baht', 'Thai Baht', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'THB', 'EN_GB', 'Thai Baht', 'Thai Baht', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_fiat_currency', 'VND', 'ZH_CN', '越南盾', '越南盾', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'VND', 'ZH_TW', '越南盾', '越南盾', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'VND', 'EN_US', 'Vietnamese Dong', 'Vietnamese Dong', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'VND', 'EN_GB', 'Vietnamese Dong', 'Vietnamese Dong', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_fiat_currency', 'KHR', 'ZH_CN', '柬埔寨瑞尔', '柬埔寨瑞尔', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'KHR', 'ZH_TW', '柬埔寨瑞爾', '柬埔寨瑞爾', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'KHR', 'EN_US', 'Cambodian Riel', 'Cambodian Riel', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'KHR', 'EN_GB', 'Cambodian Riel', 'Cambodian Riel', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_fiat_currency', 'EUR', 'ZH_CN', '欧元', '欧元', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'EUR', 'ZH_TW', '歐元', '歐元', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'EUR', 'EN_US', 'Euro', 'Euro', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'EUR', 'EN_GB', 'Euro', 'Euro', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_fiat_currency', 'GBP', 'ZH_CN', '英镑', '英镑', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'GBP', 'ZH_TW', '英鎊', '英鎊', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'GBP', 'EN_US', 'British Pound Sterling', 'British Pound Sterling', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'GBP', 'EN_GB', 'British Pound Sterling', 'British Pound Sterling', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_fiat_currency', 'AED', 'ZH_CN', '阿联酋迪拉姆', '阿联酋迪拉姆', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'AED', 'ZH_TW', '阿聯酋迪拉姆', '阿聯酋迪拉姆', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'AED', 'EN_US', 'United Arab Emirates Dirham', 'United Arab Emirates Dirham', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_fiat_currency', 'AED', 'EN_GB', 'United Arab Emirates Dirham', 'United Arab Emirates Dirham', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT');





# ----------------------------------------------------
# 虚拟货币 币种
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
    ('fmk_crypto_currency', 'USDT-TRON', 1, 'NORMAL', 'Tether USD on TRON', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'TRX-TRON', 2, 'NORMAL', 'TRON on TRON', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'TON-TON', 3, 'NORMAL', 'Toncoin on TON', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'USDT-TON', 4, 'NORMAL', 'Tether USD on TON', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'ETH-ETH', 5, 'NORMAL', 'Ethereum on Ethereum', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'USDT-ETH', 6, 'NORMAL', 'Tether USD on Ethereum', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'BTC-BTC', 7, 'NORMAL', 'Bitcoin on Bitcoin', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_crypto_currency', 'USDT-BSC', 8, 'NORMAL', 'Tether USD on BNB Smart Chain', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'BNB-BSC', 9, 'NORMAL', 'BNB on BNB Smart Chain', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'USDT-SOL', 10, 'NORMAL', 'Tether USD on Solana', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'SOL-SOL', 11, 'NORMAL', 'Solana on Solana', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'USDT-POLYGON', 12, 'NORMAL', 'Tether USD on Polygon', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'MATIC-POLYGON', 13, 'NORMAL', 'Polygon on Polygon', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT');


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
    ('fmk_crypto_currency', 'USDT-TRON', 'ZH_CN', 'USDT / TRON 网络', '泰达币 / TRON 网络', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'USDT-TRON', 'ZH_TW', 'USDT / TRON 網路', '泰達幣 / TRON 網路', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'USDT-TRON', 'EN_US', 'USDT / TRON Network', 'Tether USD on TRON Network', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'USDT-TRON', 'EN_GB', 'USDT / TRON Network', 'Tether USD on TRON Network', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_crypto_currency', 'TRX-TRON', 'ZH_CN', 'TRX / TRON 网络', '波场币 / TRON 网络', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'TRX-TRON', 'ZH_TW', 'TRX / TRON 網路', '波場幣 / TRON 網路', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'TRX-TRON', 'EN_US', 'TRX / TRON Network', 'TRON on TRON Network', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'TRX-TRON', 'EN_GB', 'TRX / TRON Network', 'TRON on TRON Network', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_crypto_currency', 'TON-TON', 'ZH_CN', 'TON / TON 网络', 'Toncoin / TON 网络', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'TON-TON', 'ZH_TW', 'TON / TON 網路', 'Toncoin / TON 網路', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'TON-TON', 'EN_US', 'TON / TON Network', 'Toncoin on TON Network', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'TON-TON', 'EN_GB', 'TON / TON Network', 'Toncoin on TON Network', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_crypto_currency', 'USDT-TON', 'ZH_CN', 'USDT / TON 网络', '泰达币 / TON 网络', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'USDT-TON', 'ZH_TW', 'USDT / TON 網路', '泰達幣 / TON 網路', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'USDT-TON', 'EN_US', 'USDT / TON Network', 'Tether USD on TON Network', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'USDT-TON', 'EN_GB', 'USDT / TON Network', 'Tether USD on TON Network', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_crypto_currency', 'ETH-ETH', 'ZH_CN', 'ETH / Ethereum 网络', '以太坊 / Ethereum 网络', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'ETH-ETH', 'ZH_TW', 'ETH / Ethereum 網路', '以太坊 / Ethereum 網路', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'ETH-ETH', 'EN_US', 'ETH / Ethereum Network', 'Ethereum on Ethereum Network', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'ETH-ETH', 'EN_GB', 'ETH / Ethereum Network', 'Ethereum on Ethereum Network', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_crypto_currency', 'USDT-ETH', 'ZH_CN', 'USDT / Ethereum 网络', '泰达币 / Ethereum 网络', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'USDT-ETH', 'ZH_TW', 'USDT / Ethereum 網路', '泰達幣 / Ethereum 網路', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'USDT-ETH', 'EN_US', 'USDT / Ethereum Network', 'Tether USD on Ethereum Network', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'USDT-ETH', 'EN_GB', 'USDT / Ethereum Network', 'Tether USD on Ethereum Network', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

    ('fmk_crypto_currency', 'BTC-BTC', 'ZH_CN', 'BTC / Bitcoin 网络', '比特币 / Bitcoin 网络', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'BTC-BTC', 'ZH_TW', 'BTC / Bitcoin 網路', '比特幣 / Bitcoin 網路', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'BTC-BTC', 'EN_US', 'BTC / Bitcoin Network', 'Bitcoin on Bitcoin Network', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
    ('fmk_crypto_currency', 'BTC-BTC', 'EN_GB', 'BTC / Bitcoin Network', 'Bitcoin on Bitcoin Network', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT');
