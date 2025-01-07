with source as (

    select * from {{ source('raw_tpcds_data', 'call_center') }}

),

renamed as (

    select
        int64_field_0 AS cc_call_center_sk,
        string_field_1 AS cc_call_center_id,
        date_field_2 AS cc_rec_start_date,
        date_field_3 AS cc_rec_end_date,
        string_field_4 AS cc_closed_date_sk,
        int64_field_5 AS cc_open_date_sk,
        string_field_6 AS cc_name,
        string_field_7 AS cc_class,
        int64_field_8 AS cc_employees,
        int64_field_9 AS cc_sq_ft,
        string_field_10 AS cc_hours,
        string_field_11 AS cc_manager,
        int64_field_12 AS cc_mkt_id,
        string_field_13 AS cc_mkt_class,
        string_field_14 AS cc_mkt_desc,
        string_field_15 AS cc_market_manager,
        int64_field_16 AS cc_division,
        string_field_17 AS cc_division_name,
        int64_field_18 AS cc_company,
        string_field_19 AS cc_company_name,
        int64_field_20 AS cc_street_number,
        string_field_21 AS cc_street_name,
        string_field_22 AS cc_street_type,
        string_field_23 AS cc_suite_number,
        string_field_24 AS cc_city,
        string_field_25 AS cc_county,
        string_field_26 AS cc_state,
        int64_field_27 AS cc_zip,
        string_field_28 AS cc_country,
        int64_field_29 AS cc_gmt_offset,
        double_field_30 AS cc_tax_percentage

    from source

)

select * from renamed

