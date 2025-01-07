with source as (

    select * from {{ source('raw_tpcds_data', 'store_sales') }}

),

renamed as (

    select
        int64_field_0 AS ss_sold_date_sk,
        int64_field_1 AS ss_sold_time_sk,
        int64_field_2 AS ss_item_sk,
        int64_field_3 AS ss_customer_sk,
        int64_field_4 AS ss_cdemo_sk,
        int64_field_5 AS ss_hdemo_sk,
        int64_field_6 AS ss_addr_sk,
        int64_field_7 AS ss_store_sk,
        int64_field_8 AS ss_promo_sk,
        int64_field_9 AS ss_ticket_number,
        int64_field_10 AS ss_quantity,
        double_field_11 AS ss_wholesale_cost,
        double_field_12 AS ss_list_price,
        double_field_13 AS ss_sales_price,
        double_field_14 AS ss_ext_discount_amt,
        double_field_15 AS ss_ext_sales_price,
        double_field_16 AS ss_ext_wholesale_cost,
        double_field_17 AS ss_ext_list_price,
        double_field_18 AS ss_ext_tax,
        double_field_19 AS ss_coupon_amt,
        double_field_20 AS ss_net_paid,
        double_field_21 AS ss_net_paid_inc_tax,
        double_field_22 AS ss_net_profit

    from source

)

select * from renamed

