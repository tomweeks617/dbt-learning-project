with source as (

    select * from {{ source('raw_tpcds_data', 'customer_address') }}

),

renamed as (

    select
        int64_field_0 AS ca_address_sk ,
        string_field_1 AS ca_address_id ,
        int64_field_2 AS ca_street_number ,
        string_field_3 AS ca_street_name ,
        string_field_4 AS ca_street_type ,
        string_field_5 AS ca_suite_number ,
        string_field_6 AS ca_city ,
        string_field_7 AS ca_county ,
        string_field_8 AS ca_state ,
        int64_field_9 AS ca_zip ,
        string_field_10 AS ca_country ,
        int64_field_11 AS ca_gmt_offset ,
        string_field_12 AS ca_location_type 

    from source

)

select * from renamed
