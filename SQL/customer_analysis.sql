-- Total Customers
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM customers;

-- Repeat Customers
SELECT COUNT(*) AS repeat_customers
FROM (
    SELECT c.customer_unique_id
    FROM orders o
    JOIN customers c ON o.customer_id = c.customer_id
    GROUP BY c.customer_unique_id
    HAVING COUNT(o.order_id) > 1
) AS repeat_data;

-- New Customers
SELECT COUNT(*) AS new_customers
FROM (
    SELECT c.customer_unique_id
    FROM orders o
    JOIN customers c ON o.customer_id = c.customer_id
    GROUP BY c.customer_unique_id
    HAVING COUNT(o.order_id) = 1
) AS new_data;

-- Repeat Customer Rate
SELECT 
ROUND(
    (COUNT(DISTINCT CASE WHEN order_count > 1 THEN customer_unique_id END) * 100.0) /
    COUNT(DISTINCT customer_unique_id), 2
) AS repeat_customer_rate
FROM (
    SELECT c.customer_unique_id, COUNT(o.order_id) AS order_count
    FROM orders o
    JOIN customers c ON o.customer_id = c.customer_id
    GROUP BY c.customer_unique_id
) t;