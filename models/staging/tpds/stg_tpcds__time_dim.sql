

with source as (

    select * from {{ source('raw_tpcds_data', 'time_dim') }}

),

renamed as (

    select
        int64_field_0 AS t_time_sk,
        string_field_1 AS t_time_id,
        int64_field_2 AS t_time,
        int64_field_3 AS t_hour,
        int64_field_4 AS t_minute,
        int64_field_5 AS t_second,
        string_field_6 AS t_am_pm,
        string_field_7 AS t_shift,
        string_field_8 AS t_sub_shift,
        string_field_9 AS t_meal_time

    from source

)

select * from renamed

