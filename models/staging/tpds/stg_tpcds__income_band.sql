

with source as (

    select * from {{ source('raw_tpcds_data', 'income_band') }}

),

renamed as (

    select
        int64_field_0 AS ib_income_band_sk,
        int64_field_1 AS ib_lower_bound,
        int64_field_2 AS ib_upper_bound

    from source

)

select * from renamed

