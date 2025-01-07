
with source as (

    select * from {{ source('raw_tpcds_data', 'catalog_page') }}

),

renamed as (

    select
        int64_field_0 AS cp_catalog_page_sk,
        string_field_1 AS cp_catalog_page_id,
        int64_field_2 AS cp_start_date_sk,
        int64_field_3 AS cp_end_date_sk,
        string_field_4 AS cp_department,
        int64_field_5 AS cp_catalog_number,
        int64_field_6 AS cp_catalog_page_number,
        string_field_7 AS cp_description,
        string_field_8 AS cp_type

    from source

)

select * from renamed
