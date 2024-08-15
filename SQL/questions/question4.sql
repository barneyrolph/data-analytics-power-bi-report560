-- Create a view where the rows are the store types and the columns are the total sales, percentage of total sales and the count of orders 

CREATE VIEW store_sales_summary AS
SELECT 
    ds.store_type AS "Store Type",
    SUM(op."Product Quantity" * dp.sale_price) AS total_sales,
    (SUM(op."Product Quantity" * dp.sale_price) / SUM(SUM(op."Product Quantity" * dp.sale_price)) OVER ()) * 100 AS percentage_of_total_sales,
    COUNT(op."Order Date") AS order_count
FROM 
    orders_powerbi op
JOIN 
    dim_products dp 
ON 
    op.product_code = dp.product_code
JOIN 
    dim_stores ds 
ON 
    op."Store Code" = ds."store code"
GROUP BY 
    ds.store_type
ORDER BY 
    total_sales DESC;

SELECT * FROM store_sales_summary;