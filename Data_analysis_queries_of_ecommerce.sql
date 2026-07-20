-- First analysis revenue by location
 
SELECT 
    c.location,
    ROUND((SUM(o.total_amount) * 100) / (SELECT 
                    SUM(total_amount)
                FROM
                    orders),
            2) AS total_revenue
FROM
    orders o
        JOIN
    customers c ON c.customer_id = o.customer_id
GROUP BY c.location
ORDER BY ROUND((SUM(o.total_amount) * 100) / (SELECT 
                SUM(total_amount)
            FROM
                orders),
        2);

-- percentage of repeat customers 

WITH customer_orders AS (
    SELECT
        customer_id,
        COUNT(*) AS cnt
    FROM orders
    GROUP BY customer_id
)

SELECT
    ROUND(
        100 * SUM(CASE WHEN cnt > 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS perc_of_repeat_customers
FROM customer_orders; 
-- Highest sales by product category 

SELECT 
    p.category, COUNT(*) AS sales
FROM
    products p
        LEFT JOIN
    orderdetails o ON o.product_id = p.product_id
GROUP BY p.category;

-- Highest revenue by product category

SELECT 
    p.category,
    SUM(o.price_per_unit * o.quantity) AS Total_revenue
FROM
    products p
        LEFT JOIN
    orderdetails o ON o.product_id = p.product_id
GROUP BY p.category order by SUM(o.price_per_unit * o.quantity) desc


            
