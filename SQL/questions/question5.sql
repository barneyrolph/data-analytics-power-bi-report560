--Which product category generated the most profit for the "Wiltshire, UK" region in 2021?

SELECT category, SUM((sale_price - cost_price)*"Product Quantity") AS profit
FROM dim_products
JOIN orders_powerbi
ON dim_products.product_code = orders_powerbi.product_code
JOIN dim_stores
ON orders_powerbi."Store Code" = dim_stores."store code"
WHERE country_region = 'Wiltshire'
AND "Order Date" BETWEEN '2021-01-01' AND '2021-12-31'
GROUP BY category
ORDER BY profit DESC
LIMIT 1
;