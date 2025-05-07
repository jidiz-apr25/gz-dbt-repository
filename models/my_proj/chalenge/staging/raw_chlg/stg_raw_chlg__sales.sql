with 

source as (

    select * from {{ source('raw_chlg', 'sales') }}

),

renamed as (

    select
        date_date as date,
        orders_id,
        pdt_id as products_id,
        revenue,
        quantity

    from source

)

select * from renamed
