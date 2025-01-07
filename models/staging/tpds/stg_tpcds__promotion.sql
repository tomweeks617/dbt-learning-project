

with source as (

    select * from {{ source('raw_tpcds_data', 'promotion') }}

),

renamed as (

    select
        int64_field_0 AS p_promo_sk,
        string_field_1 AS p_promo_id,
        int64_field_2 AS p_start_date_sk,
        int64_field_3 AS p_end_date_sk,
        int64_field_4 AS p_item_sk,
        double_field_5 AS p_cost,
        int64_field_6 AS p_response_target,
        string_field_7 AS p_promo_name,
        bool_field_8 AS p_channel_dmail,
        bool_field_9 AS p_channel_email,
        bool_field_10 AS p_channel_catalog,
        bool_field_11 AS p_channel_tv,
        bool_field_12 AS p_channel_radio,
        bool_field_13 AS p_channel_press,
        bool_field_14 AS p_channel_event,
        bool_field_15 AS p_channel_demo,
        string_field_16 AS p_channel_details,
        string_field_17 AS p_purpose,
        bool_field_18 AS p_discount_active
    from source

)

select * from renamed

