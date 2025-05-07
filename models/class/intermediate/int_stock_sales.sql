select 
product_id, date, quantity, forecast_stock as future_Stock, stock,
-- (cast(forecast_stock as int)-stock) as stock_dif,

 price
from
    
    {{ ref("stg_raw__sales") }}
join
    {{ ref("stg_raw__stock") }} 
using (product_id)
