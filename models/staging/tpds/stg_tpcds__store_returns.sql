

with source as (

    select * from {{ source('raw_tpcds_data', 'store_returns') }}

),

renamed as (

    select
        int64_field_0 AS sr_returned_date_sk,
        int64_field_1 AS sr_return_time_sk,
        int64_field_2 AS sr_item_sk,
        int64_field_3 AS sr_customer_sk,
        int64_field_4 AS sr_cdemo_sk,
        int64_field_5 AS sr_hdemo_sk,
        int64_field_6 AS sr_addr_sk,
        int64_field_7 AS sr_store_sk,
        int64_field_8 AS sr_reason_sk,
        int64_field_9 AS sr_ticket_number,
        int64_field_10 AS sr_return_quantity,
        double_field_11 AS sr_return_amt,
        double_field_12 AS sr_return_tax,
        double_field_13 AS sr_return_amt_inc_tax,
        double_field_14 AS sr_fee,
        double_field_15 AS sr_return_ship_cost,
        double_field_16 AS sr_refunded_cash,
        double_field_17 AS sr_reversed_charge,
        double_field_18 AS sr_store_credit,
        double_field_19 AS sr_net_loss

    from source

)

select * from renamed
