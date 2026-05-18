create database if not exists jzbot;

use jzbot;

-- 国家表
CREATE TABLE fmk_country
(
    id          BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '主键ID',
    code        VARCHAR(32)                                  NOT NULL COMMENT '国家代码，如 CN / US / KH',
    iso2        VARCHAR(2)                                   NOT NULL COMMENT 'ISO 3166-1 alpha-2',
    iso3        VARCHAR(3)                                   NOT NULL COMMENT 'ISO 3166-1 alpha-3',
    name        VARCHAR(128)                                 NOT NULL COMMENT '国家英文名称',
    phone_code  VARCHAR(16)                 DEFAULT NULL COMMENT '国际电话区号，如 +86',
    sort_order  INT                                          NOT NULL DEFAULT 0 COMMENT '排序',
    status      enum ('NORMAL', 'ABNORMAL') default 'NORMAL' not null comment '删除标志',
    del_flag    enum ('NORMAL', 'ABNORMAL') default 'NORMAL' not null comment '删除标志',
    create_user varchar(50)                                  not null comment '创建用户',
    create_date bigint                                       not null comment '创建时间（UTC毫秒）',
    update_user varchar(50)                                  null comment '更新用户',
    update_date bigint                                       not null comment '更新时间（UTC毫秒）',
    trace_id    varchar(64)                 default ''       not null comment '追踪ID',
    UNIQUE KEY uk_fmk_country_code (code),
    UNIQUE KEY uk_fmk_country_iso2 (iso2),
    UNIQUE KEY uk_fmk_country_iso3 (iso3)
) COMMENT ='国家表';

-- 国家支持语言关联表
CREATE TABLE fmk_country_language
(
    id            BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '主键ID',
    country_code  VARCHAR(32)                                  NOT NULL COMMENT '国家代码，如 CN / US / TW / GB',
    language_code VARCHAR(32)                                  NOT NULL COMMENT '语言代码，如 ZH_CN / EN_US',
    is_default    TINYINT                                      NOT NULL DEFAULT 0 COMMENT '是否默认语言 0否 1是',
    sort_order    INT                                          NOT NULL DEFAULT 0 COMMENT '排序',
    status        enum ('NORMAL', 'ABNORMAL') default 'NORMAL' not null comment '删除标志',
    del_flag      enum ('NORMAL', 'ABNORMAL') default 'NORMAL' not null comment '删除标志',
    create_user   varchar(50)                                  not null comment '创建用户',
    create_date   bigint                                       not null comment '创建时间（UTC毫秒）',
    update_user   varchar(50)                                  null comment '更新用户',
    update_date   bigint                                       not null comment '更新时间（UTC毫秒）',
    trace_id      varchar(64)                 default ''       not null comment '追踪ID',
    UNIQUE KEY uk_fmk_country_language (country_code, language_code),
    KEY idx_fmk_country_language_country_code (country_code),
    KEY idx_fmk_country_language_language_code (language_code)
) COMMENT ='国家支持语言关联表';

-- 国家时区附属表：一个国家可以有多个时区
CREATE TABLE fmk_country_timezone
(
    id            BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '主键ID',
    country_code  VARCHAR(32)                                  NOT NULL COMMENT '国家代码，如 CN / US / KH',
    timezone_code VARCHAR(64)                                  NOT NULL COMMENT '时区编码，如 Asia/Shanghai',
    is_default    TINYINT                                      NOT NULL DEFAULT 0 COMMENT '是否默认时区 0否 1是',
    sort_order    INT                                          NOT NULL DEFAULT 0 COMMENT '排序',
    status        enum ('NORMAL', 'ABNORMAL') default 'NORMAL' NOT NULL DEFAULT 'NORMAL',
    del_flag      enum ('NORMAL', 'ABNORMAL') default 'NORMAL' not null comment '删除标志',
    create_user   varchar(50)                                  not null comment '创建用户',
    create_date   bigint                                       not null comment '创建时间（UTC毫秒）',
    update_user   varchar(50)                                  null comment '更新用户',
    update_date   bigint                                       not null comment '更新时间（UTC毫秒）',
    trace_id      varchar(64)                 default ''       not null comment '追踪ID',
    UNIQUE KEY uk_fmk_country_timezone (country_code, timezone_code),
    KEY idx_fmk_country_timezone_country_code (country_code),
    KEY idx_fmk_country_timezone_timezone_code (timezone_code)
) COMMENT ='国家时区关联表';

-- 国家法币附属表：一个国家可以有多个法定货币
CREATE TABLE fmk_country_fiat_currency
(
    id                 BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '主键ID',
    country_code       VARCHAR(32)                                  NOT NULL COMMENT '国家代码，如 CN / US / KH',
    fiat_currency_code VARCHAR(32)                                  NOT NULL COMMENT '法币代码，如 CNY / USD / KHR',
    is_default         TINYINT                                      NOT NULL DEFAULT 0 COMMENT '是否默认法币 0否 1是',
    sort_order         INT                                          NOT NULL DEFAULT 0 COMMENT '排序',
    status             enum ('NORMAL', 'ABNORMAL') default 'NORMAL' NOT NULL DEFAULT 'NORMAL',
    del_flag           enum ('NORMAL', 'ABNORMAL') default 'NORMAL' not null comment '删除标志',
    create_user        varchar(50)                                  not null comment '创建用户',
    create_date        bigint                                       not null comment '创建时间（UTC毫秒）',
    update_user        varchar(50)                                  null comment '更新用户',
    update_date        bigint                                       not null comment '更新时间（UTC毫秒）',
    trace_id           varchar(64)                 default ''       not null comment '追踪ID',
    UNIQUE KEY uk_fmk_country_fiat_currency (country_code, fiat_currency_code),
    KEY idx_fmk_country_fiat_currency_country_code (country_code),
    KEY idx_fmk_country_fiat_currency_code (fiat_currency_code)
) COMMENT ='国家法币关联表';

-- auto-generated definition
create table fmk_dict
(
    id          bigint auto_increment comment '主键ID'
        primary key,
    dict_type   varchar(100)                                 not null comment '字典类型，例如 gender, currency, country',
    dict_key    varchar(100)                                 not null comment '字典键，用于逻辑标识，如 MALE, USD',
    sort_order  int                         default 0        not null comment '排序号',
    status      enum ('NORMAL', 'ABNORMAL') default 'NORMAL' not null comment '状态：NORMAL 启用，ABNORMAL 禁用',
    remark      varchar(255)                                 null comment '备注说明',
    del_flag    enum ('NORMAL', 'ABNORMAL') default 'NORMAL' not null comment '删除标志',
    create_user varchar(50)                                  not null comment '创建用户',
    create_date bigint                                       not null comment '创建时间（UTC毫秒）',
    update_user varchar(50)                                  null comment '更新用户',
    update_date bigint                                       not null comment '更新时间（UTC毫秒）',
    trace_id    varchar(64)                 default ''       not null comment '追踪ID',
    constraint uk_type_key
        unique (dict_type, dict_key),
    index idx_dict_type (dict_type),
    index idx_status (status),
    index idx_del_flag (del_flag),
    index idx_create_date (create_date),
    index idx_update_date (update_date)
)
    comment '系统字典主表' charset utf8mb4
                           collate utf8mb4_unicode_ci;


-- auto-generated definition
create table fmk_dict_i18n
(
    id            bigint auto_increment comment '主键ID'
        primary key,
    dict_type     varchar(100)                                 not null comment '字典类型，与主表一致',
    dict_key      varchar(100)                                 not null comment '字典键，与主表一致',
    language_code varchar(10)                                  not null comment '语言代码，例如 zh, en, ja',
    dict_value    varchar(255)                                 not null comment '显示名称，例如：男 / Male / 男性',
    remark        varchar(512)                                 null comment '描述信息，可选',
    del_flag      enum ('NORMAL', 'ABNORMAL') default 'NORMAL' not null comment '删除标志',
    create_user   varchar(50)                                  not null comment '创建用户',
    create_date   bigint                                       not null comment '创建时间（UTC毫秒）',
    update_user   varchar(50)                                  null comment '更新用户',
    update_date   bigint                                       not null comment '更新时间（UTC毫秒）',
    trace_id      varchar(64)                 default ''       not null comment '追踪ID',
    constraint uk_dict_i18n
        unique (dict_type, dict_key, language_code),
    index idx_dict_type_key (dict_type, dict_key),
    index idx_language_code (language_code),
    index idx_del_flag (del_flag),
    index idx_create_date (create_date)
)
    comment '系统字典多语言表' charset utf8mb4
                               collate utf8mb4_unicode_ci;


-- auto-generated definition
create table fmk_multi_language_message
(
    id            bigint auto_increment comment 'Primary key ID; 主键ID'
        primary key,
    message_type  varchar(100)                                 not null comment 'Message type; 消息类型',
    message_key   varchar(100)                                 not null comment 'Message key; 消息键',
    language_code varchar(10)                                  not null comment 'Language code (en, zh); 语言代码',
    message_value varchar(512)                                 not null comment 'Message content; 消息内容',
    del_flag      enum ('NORMAL', 'ABNORMAL') default 'NORMAL' not null comment 'Delete flag; 删除标志',
    create_user   varchar(50)                                  not null comment 'Creator user ID; 创建用户ID',
    create_date   bigint                                       not null comment 'Creation timestamp (UTC, milliseconds); 创建时间(UTC毫秒时间戳)',
    update_user   varchar(50)                                  null comment 'Updater user ID or name; 更新用户ID或名称',
    update_date   bigint                                       not null comment 'Update timestamp (UTC, milliseconds); 更新时间(UTC毫秒时间戳)',
    trace_id      varchar(64)                 default ''       not null comment '追踪ID',
    constraint uk_message_locale
        unique (message_type, message_key, language_code) comment 'Unique index on message and locale; 消息和语言唯一索引',
    index idx_message_type (message_type),
    index idx_message_key (message_key),
    index idx_language_code (language_code),
    index idx_del_flag (del_flag),
    index idx_create_date (create_date),
    index idx_message_type_key (message_type, message_key)
)
    comment 'System message content table; 系统消息内容表' charset utf8mb4
                                                           collate utf8mb4_unicode_ci;


