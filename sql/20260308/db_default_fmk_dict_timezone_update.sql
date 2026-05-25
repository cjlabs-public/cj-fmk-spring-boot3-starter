UPDATE fmk_dict
SET status = CASE
                 WHEN dict_key IN (
                                   'Asia/Shanghai',
                                   'Asia/Phnom_Penh',
                                   'Asia/Ho_Chi_Minh',
                                   'Asia/Seoul'
                     )
                     THEN 'NORMAL'
                 ELSE 'ABNORMAL'
    END,
    update_user = '0',
    update_date = 1762560000000,
    trace_id = 'TRACE_INIT'
WHERE dict_type = 'fmk_timezone';