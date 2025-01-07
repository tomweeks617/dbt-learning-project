WITH
  source_data AS (
    SELECT
      int64_field_0 AS c_customer_sk 
      , string_field_1 AS c_customer_id 
      , int64_field_2 AS c_current_cdemo_sk 
      , int64_field_3 AS c_current_hdemo_sk 
      , int64_field_4 AS c_current_addr_sk 
      , int64_field_5 AS c_first_shipto_date_sk 
      , int64_field_6 AS c_first_sales_date_sk 
      , string_field_7 AS c_salutation 
      , string_field_8 AS c_first_name 
      , string_field_9 AS c_last_name 
      , bool_field_10 AS c_preferred_cust_flag 
      , int64_field_11 AS c_birth_day 
      , int64_field_12 AS c_birth_month 
      , int64_field_13 AS c_birth_year 
      , string_field_14 AS c_birth_country 
      , string_field_15 AS c_login 
      , string_field_16 AS c_email_address 
      , int64_field_17 AS c_last_review_date_sk 
    FROM {{ source('raw_tpcds_data', 'customer') }}
  )

SELECT
  c_customer_sk
  , c_customer_id
  , c_current_cdemo_sk
  , c_current_hdemo_sk
  , c_current_addr_sk
  , c_first_shipto_date_sk
  , c_first_sales_date_sk
  , c_salutation
  , c_first_name
  , c_last_name
  , c_preferred_cust_flag
  , c_birth_day
  , c_birth_month
  , c_birth_year
  , c_birth_country
  , c_login
  , c_email_address
  , c_last_review_date_sk
  , concat(c_first_name, ' ', c_last_name) as c_full_name
  , case
       when c_preferred_cust_flag = TRUE then true
       when c_preferred_cust_flag = FALSE then false
    end as c_is_preferred_customer
  , date(c_birth_year, c_birth_month, c_birth_day) as c_birthdate
FROM source_data