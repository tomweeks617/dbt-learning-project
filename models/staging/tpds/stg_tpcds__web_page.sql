
with source as (

    select * from {{ source('raw_tpcds_data', 'web_page') }}

),

renamed as (

    select
        int64_field_0 AS wp_web_page_sk,
        string_field_1 AS wp_web_page_id,
        date_field_2 AS wp_rec_start_date,
        date_field_3 AS wp_rec_end_date,
        int64_field_4 AS wp_creation_date_sk,
        int64_field_5 AS wp_access_date_sk,
        bool_field_6 AS wp_autogen_flag,
        int64_field_7 AS wp_customer_sk,
        string_field_8 AS wp_url,
        string_field_9 AS wp_type,
        int64_field_10 AS wp_char_count,
        int64_field_11 AS wp_link_count,
        int64_field_12 AS wp_image_count,
        int64_field_13 AS wp_max_ad_count

    from source

)

select * from renamed
