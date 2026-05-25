
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
