-- Monthly Orders Trend
SELECT 
DATE_FORMAT(order_purchase_timestamp,'%Y-%m') AS order_month,
COUNT(order_id) AS total_orders
FROM orders
GROUP BY order_month
ORDER BY order_month;

-- Monthly Revenue Trend
SELECT 
DATE_FORMAT(o.order_purchase_timestamp,'%Y-%m') AS order_month,
ROUND(SUM(p.payment_value),2) AS total_revenue
FROM orders o
JOIN payments p ON o.order_id = p.order_id
GROUP BY order_month
ORDER BY order_month;