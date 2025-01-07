

with source as (

    select * from {{ source('raw_tpcds_data', 'reason') }}

),

renamed as (

    select
        int64_field_0 AS r_reason_sk,
        string_field_1 AS r_reason_id,
        string_field_2 AS r_reason_desc

    from source

)

select * from renamed

