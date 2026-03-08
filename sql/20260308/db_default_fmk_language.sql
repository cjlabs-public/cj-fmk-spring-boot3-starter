use remote_local;

-- 插入语言数据
INSERT INTO fmk_language (code, name_zh, name_en, region, sort_order, status, del_flag, create_user, create_date, update_user, update_date, trace_id) VALUES
-- 中文系
('ZH_CN', '简体中文（中国大陆）', 'Chinese Simplified (China)', '中文系', 1, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('ZH_TW', '繁体中文（台湾）', 'Chinese Traditional (Taiwan)', '中文系', 2, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('ZH_HK', '繁体中文（香港）', 'Chinese Traditional (Hong Kong)', '中文系', 3, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('ZH_SG', '中文（新加坡）', 'Chinese (Singapore)', '中文系', 4, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

-- 英语系
('EN_US', '英语（美国）', 'English (United States)', '英语系', 10, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('EN_GB', '英语（英国）', 'English (Great Britain)', '英语系', 11, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('EN_SG', '英语（新加坡）', 'English (Singapore)', '英语系', 12, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('EN_IN', '英语（印度）', 'English (India)', '英语系', 13, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('EN_PH', '英语（菲律宾）', 'English (Philippines)', '英语系', 14, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

-- 东亚
('JA_JP', '日语（日本）', 'Japanese (Japan)', '东亚', 20, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('KO_KR', '韩语（韩国）', 'Korean (South Korea)', '东亚', 21, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

-- 东南亚
('TH_TH', '泰语（泰国）', 'Thai (Thailand)', '东南亚', 30, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('VI_VN', '越南语（越南）', 'Vietnamese (Vietnam)', '东南亚', 31, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('ID_ID', '印尼语（印度尼西亚）', 'Indonesian (Indonesia)', '东南亚', 32, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('MS_MY', '马来语（马来西亚）', 'Malay (Malaysia)', '东南亚', 33, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('TL_PH', '他加禄语（菲律宾）', 'Tagalog (Philippines)', '东南亚', 34, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('KM_KH', '高棉语（柬埔寨）', 'Khmer (Cambodia)', '东南亚', 35, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('LO_LA', '老挝语（老挝）', 'Lao (Laos)', '东南亚', 36, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('MY_MM', '缅甸语（缅甸）', 'Myanmar (Myanmar)', '东南亚', 37, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

-- 南亚
('HI_IN', '印地语（印度）', 'Hindi (India)', '南亚', 40, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('BN_BD', '孟加拉语（孟加拉国）', 'Bengali (Bangladesh)', '南亚', 41, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('UR_PK', '乌尔都语（巴基斯坦）', 'Urdu (Pakistan)', '南亚', 42, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('NE_NP', '尼泊尔语（尼泊尔）', 'Nepali (Nepal)', '南亚', 43, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('SI_LK', '僧伽罗语（斯里兰卡）', 'Sinhala (Sri Lanka)', '南亚', 44, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('TA_LK', '泰米尔语（斯里兰卡）', 'Tamil (Sri Lanka)', '南亚', 45, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

-- 中东
('AR_SA', '阿拉伯语（沙特）', 'Arabic (Saudi Arabia)', '中东', 50, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('AR_AE', '阿拉伯语（阿联酋）', 'Arabic (United Arab Emirates)', '中东', 51, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('HE_IL', '希伯来语（以色列）', 'Hebrew (Israel)', '中东', 52, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),

-- 欧洲
('FR_FR', '法语（法国）', 'French (France)', '欧洲', 60, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('DE_DE', '德语（德国）', 'German (Germany)', '欧洲', 61, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('ES_ES', '西班牙语（西班牙）', 'Spanish (Spain)', '欧洲', 62, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT'),
('RU_RU', '俄语（俄罗斯）', 'Russian (Russia)', '欧洲', 63, 'NORMAL', 'NORMAL', '0', 1762560000000, '0', 1762560000000, 'TRACE_INIT');
