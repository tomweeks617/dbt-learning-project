with source as (

    select * from {{ source('raw_tpcds_data', 'warehouse') }}

),

renamed as (

    select
        int64_field_0 AS w_warehouse_sk,
        string_field_1 AS w_warehouse_id,
        string_field_2 AS w_warehouse_name,
        int64_field_3 AS w_warehouse_sq_ft,
        int64_field_4 AS w_street_number,
        string_field_5 AS w_street_name,
        string_field_6 AS w_street_type,
        string_field_7 AS w_suite_number,
        string_field_8 AS w_city,
        string_field_9 AS w_county,
        string_field_10 AS w_state,
        int64_field_11 AS w_zip,
        string_field_12 AS w_country,
        int64_field_13 AS w_gmt_offset

    from source

)

select * from renamed