-- Which German store had the highest revenue for 2022?

SELECT store_type, SUM("Product Quantity" * sale_price) AS revenue
FROM dim_stores
JOIN orders_powerbi 
ON dim_stores."store code" = orders_powerbi."Store Code"
JOIN dim_products 
ON orders_powerbi.product_code = dim_products.product_code
WHERE "Order Date"::date BETWEEN '2022-01-01' AND '2023-01-01'
GROUP BY store_type
ORDER BY revenue DESC 
;