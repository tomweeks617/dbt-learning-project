

with source as (

    select * from {{ source('raw_tpcds_data', 'catalog_returns') }}

),

renamed as (

    select
        int64_field_0 AS cr_returned_date_sk,
        int64_field_1 AS cr_returned_time_sk,
        int64_field_2 AS cr_item_sk,
        int64_field_3 AS cr_refunded_customer_sk,
        int64_field_4 AS cr_refunded_cdemo_sk,
        int64_field_5 AS cr_refunded_hdemo_sk,
        int64_field_6 AS cr_refunded_addr_sk,
        int64_field_7 AS cr_returning_customer_sk,
        int64_field_8 AS cr_returning_cdemo_sk,
        int64_field_9 AS cr_returning_hdemo_sk,
        int64_field_10 AS cr_returning_addr_sk,
        int64_field_11 AS cr_call_center_sk,
        int64_field_12 AS cr_catalog_page_sk,
        int64_field_13 AS cr_ship_mode_sk,
        int64_field_14 AS cr_warehouse_sk,
        int64_field_15 AS cr_reason_sk,
        int64_field_16 AS cr_order_number,
        int64_field_17 AS cr_return_quantity,
        double_field_18 AS cr_return_amount,
        double_field_19 AS cr_return_tax,
        double_field_20 AS cr_return_amt_inc_tax,
        double_field_21 AS cr_fee,
        double_field_22 AS cr_return_ship_cost,
        double_field_23 AS cr_refunded_cash,
        double_field_24 AS cr_reversed_charge,
        double_field_25 AS cr_store_credit,
        double_field_26 AS cr_net_loss
    from source

)

select * from renamed

 