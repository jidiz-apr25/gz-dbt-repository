select 
product_id,
sum( quantity) as qty,
sum(stock) as stock,
avg(price) as avg_price
from 
{{ref("int_stock_sales")}}
group by product_id
