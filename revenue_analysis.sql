-- Top Revenue Categories
SELECT 
p.product_category_name,
ROUND(SUM(oi.price),2) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY total_revenue DESC
LIMIT 10;

-- Top 10 Revenue Products
SELECT 
product_id,
ROUND(SUM(price),2) AS revenue
FROM order_items
GROUP BY product_id
ORDER BY revenue DESC
LIMIT 10;

-- Cart Abandonment Rate
SELECT 
ROUND(
    (COUNT(CASE WHEN order_status = 'canceled' THEN 1 END) * 100.0) 
    / COUNT(*), 2
) AS cart_abandonment_rate
FROM orders;