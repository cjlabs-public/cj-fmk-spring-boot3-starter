create table fmk_country
(
    id          bigint auto_increment comment '主键ID'
        primary key,
    code        varchar(32)                                  not null comment '国家代码，如 CN / US / KH',
    iso2        varchar(2)                                   not null comment 'ISO 3166-1 alpha-2',
    iso3        varchar(3)                                   not null comment 'ISO 3166-1 alpha-3',
    name        varchar(128)                                 not null comment '国家英文名称',
    phone_code  varchar(16)                                  null comment '国际电话区号，如 +86',
    sort_order  int                         default 0        not null comment '排序',
    status      enum ('NORMAL', 'ABNORMAL') default 'NORMAL' not null comment '删除标志',
    del_flag    enum ('NORMAL', 'ABNORMAL') default 'NORMAL' not null comment '删除标志',
    create_user varchar(50)                                  not null comment '创建用户',
    create_date bigint                                       not null comment '创建时间（UTC毫秒）',
    update_user varchar(50)                                  null comment '更新用户',
    update_date bigint                                       not null comment '更新时间（UTC毫秒）',
    trace_id    varchar(64)                 default ''       not null comment '追踪ID',
    constraint uk_fmk_country_code
        unique (code),
    constraint uk_fmk_country_iso2
        unique (iso2),
    constraint uk_fmk_country_iso3
        unique (iso3)
)
    comment '国家表';

