create table fmk_country_fiat_currency
(
    id                 bigint auto_increment comment '主键ID'
        primary key,
    country_code       varchar(32)                                  not null comment '国家代码，如 CN / US / KH',
    fiat_currency_code varchar(32)                                  not null comment '法币代码，如 CNY / USD / KHR',
    is_default         tinyint                     default 0        not null comment '是否默认法币 0否 1是',
    sort_order         int                         default 0        not null comment '排序',
    status             enum ('NORMAL', 'ABNORMAL') default 'NORMAL' not null,
    del_flag           enum ('NORMAL', 'ABNORMAL') default 'NORMAL' not null comment '删除标志',
    create_user        varchar(50)                                  not null comment '创建用户',
    create_date        bigint                                       not null comment '创建时间（UTC毫秒）',
    update_user        varchar(50)                                  null comment '更新用户',
    update_date        bigint                                       not null comment '更新时间（UTC毫秒）',
    trace_id           varchar(64)                 default ''       not null comment '追踪ID',
    constraint uk_fmk_country_fiat_currency
        unique (country_code, fiat_currency_code)
)
    comment '国家法币关联表';

create index idx_fmk_country_fiat_currency_code
    on fmk_country_fiat_currency (fiat_currency_code);

create index idx_fmk_country_fiat_currency_country_code
    on fmk_country_fiat_currency (country_code);

