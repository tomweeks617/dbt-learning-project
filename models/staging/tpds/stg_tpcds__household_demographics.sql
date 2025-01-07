with source as (

    select * from {{ source('raw_tpcds_data', 'household_demographics') }}

),

renamed as (

    select
        int64_field_0 AS hd_demo_sk,
        int64_field_1 AS hd_income_band_sk,
        string_field_2 AS hd_buy_potential,
        int64_field_3 AS hd_dep_count,
        int64_field_4 AS hd_vehicle_count

    from source

)

select * from renamed

