
with source as (

    select * from {{ source('raw_tpcds_data', 'item') }}

),

renamed as (

    select
        int64_field_0 AS i_item_sk,
        string_field_1 AS i_item_id,
        date_field_2 AS i_rec_start_date,
        date_field_3 AS i_rec_end_date,
        string_field_4 AS i_item_desc,
        double_field_5 AS i_current_price,
        double_field_6 AS i_wholesale_cost,
        int64_field_7 AS i_brand_id,
        string_field_8 AS i_brand,
        int64_field_9 AS i_class_id,
        string_field_10 AS i_class,
        int64_field_11 AS i_category_id,
        string_field_12 AS i_category,
        int64_field_13 AS i_manufact_id,
        string_field_14 AS i_manufact,
        string_field_15 AS i_size,
        string_field_16 AS i_formulation,
        string_field_17 AS i_color,
        string_field_18 AS i_units,
        string_field_19 AS i_container,
        int64_field_20 AS i_manager_id,
        string_field_21 AS i_product_name

    from source

)

select * from renamed

