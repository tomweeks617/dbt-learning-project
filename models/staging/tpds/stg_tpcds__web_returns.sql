

with source as (

    select * from {{ source('raw_tpcds_data', 'web_returns') }}

),

renamed as (

    select
        int64_field_0 AS wr_returned_date_sk,
        int64_field_1 AS wr_returned_time_sk,
        int64_field_2 AS wr_item_sk,
        int64_field_3 AS wr_refunded_customer_sk,
        int64_field_4 AS wr_refunded_cdemo_sk,
        int64_field_5 AS wr_refunded_hdemo_sk,
        int64_field_6 AS wr_refunded_addr_sk,
        int64_field_7 AS wr_returning_customer_sk,
        int64_field_8 AS wr_returning_cdemo_sk,
        int64_field_9 AS wr_returning_hdemo_sk,
        int64_field_10 AS wr_returning_addr_sk,
        int64_field_11 AS wr_web_page_sk,
        int64_field_12 AS wr_reason_sk,
        int64_field_13 AS wr_order_number,
        int64_field_14 AS wr_return_quantity,
        double_field_15 AS wr_return_amt,
        double_field_16 AS wr_return_tax,
        double_field_17 AS wr_return_amt_inc_tax,
        double_field_18 AS wr_fee,
        double_field_19 AS wr_return_ship_cost,
        double_field_20 AS wr_refunded_cash,
        double_field_21 AS wr_reversed_charge,
        double_field_22 AS wr_account_credit,
        double_field_23 AS wr_net_loss

    from source

)

select * from renamed

