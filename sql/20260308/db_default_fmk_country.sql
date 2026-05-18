-- 初始化国家表
INSERT INTO fmk_country (code, iso2, iso3, name, phone_code, sort_order,
                         status, del_flag, create_user, create_date, update_user, update_date, trace_id)
VALUES ('CN', 'CN', 'CHN', 'China', '+86', 1, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
       ('US', 'US', 'USA', 'United States', '+1', 2, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000,
        'TRACE_INIT'),
       ('TW', 'TW', 'TWN', 'Taiwan', '+886', 3, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000,
        'TRACE_INIT'),
       ('GB', 'GB', 'GBR', 'United Kingdom', '+44', 4, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000,
        'TRACE_INIT');

INSERT INTO fmk_country_language (
    country_code,
    language_code,
    is_default,
    sort_order,
    status,
    del_flag,
    create_user,
    create_date,
    update_user,
    update_date,
    trace_id
) VALUES
      ('CN', 'ZH_CN', 1, 1, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

      ('TW', 'ZH_TW', 1, 1, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

      ('US', 'EN_US', 1, 1, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

      ('GB', 'EN_GB', 1, 1, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT');

-- 初始化国家时区关联表
INSERT INTO fmk_country_timezone (country_code, timezone_code, is_default, sort_order,
                                  status, del_flag, create_user, create_date, update_user, update_date, trace_id)
VALUES ('CN', 'Asia/Shanghai', 1, 1, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

       ('US', 'America/New_York', 1, 1, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
       ('US', 'America/Chicago', 0, 2, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
       ('US', 'America/Denver', 0, 3, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
       ('US', 'America/Los_Angeles', 0, 4, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

       ('TW', 'Asia/Taipei', 1, 1, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

       ('GB', 'Europe/London', 1, 1, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT');


-- 初始化国家法币关联表
INSERT INTO fmk_country_fiat_currency (country_code, fiat_currency_code, is_default, sort_order,
                                       status, del_flag, create_user, create_date, update_user, update_date, trace_id)
VALUES ('CN', 'CNY', 1, 1, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
       ('US', 'USD', 1, 1, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
       ('TW', 'TWD', 1, 1, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
       ('GB', 'GBP', 1, 1, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT');



