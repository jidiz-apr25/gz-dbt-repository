with 

source as (

    select * from {{ source('data_circle', 'raw_cc_stock') }}

),

renamed as (

    select
        model,
        model_name,
        color,
        color_name,
        size,
        new,
        forecast_stock,
        stock,
        price

    from source

)

select * from renamed
