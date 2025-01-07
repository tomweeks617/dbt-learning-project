

with source as (

    select * from {{ source('raw_tpcds_data', 'web_sales') }}

),

renamed as (

    select
        int64_field_0 AS ws_sold_date_sk,
        int64_field_1 AS ws_sold_time_sk,
        int64_field_2 AS ws_ship_date_sk,
        int64_field_3 AS ws_item_sk,
        int64_field_4 AS ws_bill_customer_sk,
        int64_field_5 AS ws_bill_cdemo_sk,
        int64_field_6 AS ws_bill_hdemo_sk,
        int64_field_7 AS ws_bill_addr_sk,
        int64_field_8 AS ws_ship_customer_sk,
        int64_field_9 AS ws_ship_cdemo_sk,
        int64_field_10 AS ws_ship_hdemo_sk,
        int64_field_11 AS ws_ship_addr_sk,
        int64_field_12 AS ws_web_page_sk,
        int64_field_13 AS ws_web_site_sk,
        int64_field_14 AS ws_ship_mode_sk,
        int64_field_15 AS ws_warehouse_sk,
        int64_field_16 AS ws_promo_sk,
        int64_field_17 AS ws_order_number,
        int64_field_18 AS ws_quantity,
        double_field_19 AS ws_wholesale_cost,
        double_field_20 AS ws_list_price,
        double_field_21 AS ws_sales_price,
        double_field_22 AS ws_ext_discount_amt,
        double_field_23 AS ws_ext_sales_price,
        double_field_24 AS ws_ext_wholesale_cost,
        double_field_25 AS ws_ext_list_price,
        double_field_26 AS ws_ext_tax,
        double_field_27 AS ws_coupon_amt,
        double_field_28 AS ws_ext_ship_cost,
        double_field_29 AS ws_net_paid,
        double_field_30 AS ws_net_paid_inc_tax,
        double_field_31 AS ws_net_paid_inc_ship,
        double_field_32 AS ws_net_paid_inc_ship_tax,
        double_field_33 AS ws_net_profit

    from source

)

select * from renamed

