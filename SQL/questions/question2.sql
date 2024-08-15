--Which month in 2022 had the highest revenue?

SELECT TO_CHAR("Order Date"::date, 'MM') AS month, SUM("Product Quantity" * sale_price) AS revenue
FROM orders_powerbi 
JOIN dim_products 
ON orders_powerbi.product_code = dim_products.product_code
WHERE "Order Date"::date BETWEEN '2022-01-01' AND '2023-01-01'
GROUP BY TO_CHAR("Order Date"::date, 'MM')
ORDER BY revenue DESC 
;