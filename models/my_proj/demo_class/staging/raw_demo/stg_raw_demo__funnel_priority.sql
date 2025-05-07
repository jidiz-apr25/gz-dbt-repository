with 

source as (

    select * from {{ source('raw_demo', 'funnel_priority') }}

),

renamed as (

    select
        compny_name as company,
        priority

    from source

)

select * from renamed
