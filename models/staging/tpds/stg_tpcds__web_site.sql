with source as (

    select * from {{ source('raw_tpcds_data', 'web_site') }}

),

renamed as (

    select
        int64_field_0 AS web_site_sk,
        string_field_1 AS web_site_id,
        date_field_2 AS web_rec_start_date,
        date_field_3 AS web_rec_end_date,
        string_field_4 AS web_name,
        int64_field_5 AS web_open_date_sk,
        int64_field_6 AS web_close_date_sk,
        string_field_7 AS web_class,
        string_field_8 AS web_manager,
        int64_field_9 AS web_mkt_id,
        string_field_10 AS web_mkt_class,
        string_field_11 AS web_mkt_desc,
        string_field_12 AS web_market_manager,
        int64_field_13 AS web_company_id,
        string_field_14 AS web_company_name,
        int64_field_15 AS web_street_number,
        string_field_16 AS web_street_name,
        string_field_17 AS web_street_type,
        string_field_18 AS web_suite_number,
        string_field_19 AS web_city,
        string_field_20 AS web_county,
        string_field_21 AS web_state,
        int64_field_22 AS web_zip,
        string_field_23 AS web_country,
        int64_field_24 AS web_gmt_offset,
        double_field_25 AS web_tax_percentage

    from source

)

select * from renamed


