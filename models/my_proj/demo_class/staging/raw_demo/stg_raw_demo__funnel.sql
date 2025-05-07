with 

source as (

    select * from {{ source('raw_demo', 'funnel') }}

),

renamed as (

    select
        company,
        sector,
        date_lead,
        opportunity_DATE AS date_opportunity
        ,CAST(date_customer AS date) AS date_customer
        ,date_lost AS date_lost

    from source

)

select * from renamed
