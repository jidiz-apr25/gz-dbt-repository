select 
product_id, date, quantity, forecast_stock, stock, price
from
    
    {{ ref("stg_raw__sales") }}
join
    {{ ref("stg_raw__stock") }} 
using (product_id)
