-- 插入语言数据
INSERT INTO fmk_language (
    code,
    name,
    sort_order,
    status,
    del_flag,
    create_user,
    create_date,
    update_user,
    update_date,
    trace_id
) VALUES

-- 1 ~ 4 中文系
('ZH_CN', 'Chinese Simplified (China)', 1, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('ZH_TW', 'Chinese Traditional (Taiwan)', 2, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

-- 5 ~ 9 英语系
('EN_US', 'English (United States)', 5, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('EN_GB', 'English (United Kingdom)', 6, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

-- 10 ~ 11 东亚
('JA_JP', 'Japanese (Japan)', 10, 'ABNORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('KO_KR', 'Korean (South Korea)', 11, 'ABNORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

-- 12 ~ 19 东南亚
('TH_TH', 'Thai (Thailand)', 12, 'ABNORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('VI_VN', 'Vietnamese (Vietnam)', 13, 'ABNORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('ID_ID', 'Indonesian (Indonesia)', 14, 'ABNORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('MS_MY', 'Malay (Malaysia)', 15, 'ABNORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('TL_PH', 'Tagalog (Philippines)', 16, 'ABNORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('KM_KH', 'Khmer (Cambodia)', 17, 'ABNORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('LO_LA', 'Lao (Laos)', 18, 'ABNORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('MY_MM', 'Myanmar (Myanmar)', 19, 'ABNORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

# 20 ~ 25 南亚
('HI_IN', 'Hindi (India)', 20, 'ABNORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('BN_BD', 'Bengali (Bangladesh)', 21, 'ABNORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('UR_PK', 'Urdu (Pakistan)', 22, 'ABNORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('NE_NP', 'Nepali (Nepal)', 23, 'ABNORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('SI_LK', 'Sinhala (Sri Lanka)', 24, 'ABNORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('TA_LK', 'Tamil (Sri Lanka)', 25, 'ABNORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

# 26 ~ 28 中东
('AR_SA', 'Arabic (Saudi Arabia)', 26, 'ABNORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('AR_AE', 'Arabic (United Arab Emirates)', 27, 'ABNORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('HE_IL', 'Hebrew (Israel)', 28, 'ABNORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

# 29 ~ 32 欧洲
('FR_FR', 'French (France)', 29, 'ABNORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('DE_DE', 'German (Germany)', 30, 'ABNORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('ES_ES', 'Spanish (Spain)', 31, 'ABNORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('RU_RU', 'Russian (Russia)', 32, 'ABNORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT');

;