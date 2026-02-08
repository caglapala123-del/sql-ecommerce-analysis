-- 1. Total number of customers
SELECT COUNT(*) AS total_customers
FROM customer;

-- 2. Number of customers who visited the website
SELECT COUNT(DISTINCT customer_id) AS visiting_customers
FROM visits;

-- 3. Number of customers who placed at least one order
SELECT COUNT(DISTINCT customer_id) AS ordering_customers
FROM orders;

-- 4. Conversion Rate (from visit to order)
-- Formula: ordering_customers / visiting_customers
SELECT
    CAST(COUNT(DISTINCT o.customer_id) AS FLOAT)
    / COUNT(DISTINCT v.customer_id) * 100 AS conversion_rate
FROM visits v
LEFT JOIN orders o
    ON v.customer_id = o.customer_id;

-- 5. Average Order Value (AOV)
SELECT
    AVG(order_amount) AS average_order_value
FROM orders;

-- 6. Repeat customer analysis
-- Customers who placed more than one order
SELECT
    customer_id,
    COUNT(order_id) AS order_count
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;
