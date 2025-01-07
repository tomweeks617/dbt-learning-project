

with source as (

    select * from {{ source('raw_tpcds_data', 'store') }}

),

renamed as (

    select
        int64_field_0 AS s_store_sk,
        string_field_1 AS s_store_id,
        date_field_2 AS s_rec_start_date,
        date_field_3 AS s_rec_end_date,
        int64_field_4 AS s_closed_date_sk,
        string_field_5 AS s_store_name,
        int64_field_6 AS s_number_employees,
        int64_field_7 AS s_floor_space,
        string_field_8 AS s_hours,
        string_field_9 AS S_manager,
        int64_field_10 AS S_market_id,
        string_field_11 AS S_geography_class,
        string_field_12 AS S_market_desc,
        string_field_13 AS s_market_manager,
        int64_field_14 AS s_division_id,
        string_field_15 AS s_division_name,
        int64_field_16 AS s_company_id,
        string_field_17 AS s_company_name,
        int64_field_18 AS s_street_number,
        string_field_19 AS s_street_name,
        string_field_20 AS s_street_type,
        string_field_21 AS s_suite_number,
        string_field_22 AS s_city,
        string_field_23 AS s_county,
        string_field_24 AS s_state,
        int64_field_25 AS s_zip,
        string_field_26 AS s_country,
        int64_field_27 AS s_gmt_offset,
        double_field_28 AS s_tax_percentage
    from source

)

select * from renamed
