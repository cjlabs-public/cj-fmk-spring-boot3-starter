
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



