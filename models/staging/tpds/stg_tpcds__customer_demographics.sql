with source as (

    select * from {{ source('raw_tpcds_data', 'customer_demographics') }}

),

renamed as (

    select
        int64_field_0 AS cd_demo_sk,
        string_field_1 AS cd_gender,
        string_field_2 AS cd_marital_status,
        string_field_3 AS cd_education_status,
        int64_field_4 AS cd_purchase_estimate,
        string_field_5 AS cd_credit_rating,
        int64_field_6 AS cd_dep_count,
        int64_field_7 AS cd_dep_employed_count,
        int64_field_8 AS cd_dep_college_count

    from source

)

select * from renamed