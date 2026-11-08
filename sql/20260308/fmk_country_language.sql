create table fmk_country_language
(
    id            bigint auto_increment comment '主键ID'
        primary key,
    country_code  varchar(32)                                  not null comment '国家代码，如 CN / US / TW / GB',
    language_code varchar(32)                                  not null comment '语言代码，如 ZH_CN / EN_US',
    is_default    tinyint                     default 0        not null comment '是否默认语言 0否 1是',
    sort_order    int                         default 0        not null comment '排序',
    status        enum ('NORMAL', 'ABNORMAL') default 'NORMAL' not null comment '删除标志',
    del_flag      enum ('NORMAL', 'ABNORMAL') default 'NORMAL' not null comment '删除标志',
    create_user   varchar(50)                                  not null comment '创建用户',
    create_date   bigint                                       not null comment '创建时间（UTC毫秒）',
    update_user   varchar(50)                                  null comment '更新用户',
    update_date   bigint                                       not null comment '更新时间（UTC毫秒）',
    trace_id      varchar(64)                 default ''       not null comment '追踪ID',
    constraint uk_fmk_country_language
        unique (country_code, language_code)
)
    comment '国家支持语言关联表';

create index idx_fmk_country_language_country_code
    on fmk_country_language (country_code);

create index idx_fmk_country_language_language_code
    on fmk_country_language (language_code);

