with source as (

    select * from {{ source('raw_tpcds_data', 'date_dim') }}

),

renamed as (

    select
        int64_field_0 AS d_date_sk,
        string_field_1 AS d_date_id,
        date_field_2 AS d_date,
        int64_field_3 AS d_month_seq,
        int64_field_4 AS d_week_seq,
        int64_field_5 AS d_quarter_seq,
        int64_field_6 AS d_year,
        int64_field_7 AS d_dow,
        int64_field_8 AS d_moy,
        int64_field_9 AS d_dom,
        int64_field_10 AS d_qoy,
        int64_field_11 AS d_fy_year,
        int64_field_12 AS d_fy_quarter_seq,
        int64_field_13 AS d_fy_week_seq,
        string_field_14 AS d_day_name,
        string_field_15 AS d_quarter_name,
        bool_field_16 AS d_holiday,
        bool_field_17 AS d_weekend,
        bool_field_18 AS d_following_holiday,
        int64_field_19 AS d_first_dom,
        int64_field_20 AS d_last_dom,
        int64_field_21 AS d_same_day_ly,
        int64_field_22 AS d_same_day_lq,
        bool_field_23 AS d_current_day,
        bool_field_24 AS d_current_week,
        bool_field_25 AS d_current_month,
        bool_field_26 AS d_current_quarter,
        bool_field_27 AS d_current_year

    from source

)

select * from renamed
