

with source as (

    select * from {{ source('raw_tpcds_data', 'ship_mode') }}

),

renamed as (

    select
        int64_field_0 AS sm_ship_mode_sk,
        string_field_1 AS sm_ship_mode_id,
        string_field_2 AS sm_type,
        string_field_3 AS sm_code,
        string_field_4 AS sm_carrier,
        string_field_5 AS sm_contract
    from source

)

select * from renamed

