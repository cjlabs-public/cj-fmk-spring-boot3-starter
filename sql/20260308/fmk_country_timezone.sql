create table fmk_country_timezone
(
    id            bigint auto_increment comment '主键ID'
        primary key,
    country_code  varchar(32)                                  not null comment '国家代码，如 CN / US / KH',
    timezone_code varchar(64)                                  not null comment '时区编码，如 Asia/Shanghai',
    is_default    tinyint                     default 0        not null comment '是否默认时区 0否 1是',
    sort_order    int                         default 0        not null comment '排序',
    status        enum ('NORMAL', 'ABNORMAL') default 'NORMAL' not null,
    del_flag      enum ('NORMAL', 'ABNORMAL') default 'NORMAL' not null comment '删除标志',
    create_user   varchar(50)                                  not null comment '创建用户',
    create_date   bigint                                       not null comment '创建时间（UTC毫秒）',
    update_user   varchar(50)                                  null comment '更新用户',
    update_date   bigint                                       not null comment '更新时间（UTC毫秒）',
    trace_id      varchar(64)                 default ''       not null comment '追踪ID',
    constraint uk_fmk_country_timezone
        unique (country_code, timezone_code)
)
    comment '国家时区关联表';

create index idx_fmk_country_timezone_country_code
    on fmk_country_timezone (country_code);

create index idx_fmk_country_timezone_timezone_code
    on fmk_country_timezone (timezone_code);

