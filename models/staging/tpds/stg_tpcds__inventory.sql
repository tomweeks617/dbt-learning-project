

with source as (

    select * from {{ source('raw_tpcds_data', 'inventory') }}

),

renamed as (

    select
        int64_field_0 AS inv_date_sk,
        int64_field_1 AS inv_item_sk,
        int64_field_2 AS inv_warehouse_sk,
        int64_field_3 AS inv_quantity_on_hand

    from source

)

select * from renamed
