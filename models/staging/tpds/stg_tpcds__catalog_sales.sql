

with source as (

    select * from {{ source('raw_tpcds_data', 'catalog_sales') }}

),

renamed as (

    select
        int64_field_0 AS cs_sold_date_sk,
        int64_field_1 AS cs_sold_time_sk,
        int64_field_2 AS cs_ship_date_sk,
        int64_field_3 AS cs_bill_customer_sk,
        int64_field_4 AS cs_bill_cdemo_sk,
        int64_field_5 AS cs_bill_hdemo_sk,
        int64_field_6 AS cs_bill_addr_sk,
        int64_field_7 AS cs_ship_customer_sk,
        int64_field_8 AS cs_ship_cdemo_sk,
        int64_field_9 AS cs_ship_hdemo_sk,
        int64_field_10 AS cs_ship_addr_sk,
        int64_field_11 AS cs_call_center_sk,
        int64_field_12 AS cs_catalog_page_sk,
        int64_field_13 AS cs_ship_mode_sk,
        int64_field_14 AS cs_warehouse_sk,
        int64_field_15 AS cs_item_sk,
        int64_field_16 AS cs_promo_sk,
        int64_field_17 AS cs_order_number,
        int64_field_18 AS cs_quantity,
        double_field_19 AS cs_wholesale_cost,
        double_field_20 AS cs_list_price,
        double_field_21 AS cs_sales_price,
        double_field_22 AS cs_ext_discount_amt,
        double_field_23 AS cs_ext_sales_price,
        double_field_24 AS cs_ext_wholesale_cost,
        double_field_25 AS cs_ext_list_price,
        double_field_26 AS cs_ext_tax,
        double_field_27 AS cs_coupon_amt,
        double_field_28 AS cs_ext_ship_cost,
        double_field_29 AS cs_net_paid,
        double_field_30 AS cs_net_paid_inc_tax,
        double_field_31 AS cs_net_paid_inc_ship,
        double_field_32 AS cs_net_paid_inc_ship_tax,
        double_field_33 AS cs_net_profit

    from source

)

select * from renamed


































