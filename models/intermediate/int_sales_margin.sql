-- int_sales_margin.sql

SELECT
    products_id,
    date,
    orders_id,
    revenue,
    quantity,
    purchase_price,
    ROUND(s.quantity*p.purchase_price,2) AS purchase_cost,
    ROUND(s.revenue - s.quantity*p.purchase_price, 2) AS margin
FROM {{ref("stg_raw_chlg__sales")}} s
LEFT JOIN {{ref("stg_raw_chlg__product")}} p
    USING (products_id)