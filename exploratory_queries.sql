-- 1. List all customers
SELECT *
FROM customer;

-- 2. Customers who have visited the site at least once
SELECT DISTINCT
    c.customer_id,
    c.customer_name
FROM customer c
JOIN visits v
    ON c.customer_id = v.customer_id;

-- 3. Number of customer-based visits
SELECT
    c.customer_id,
    c.customer_name,
    COUNT(v.visit_id) AS visit_count
FROM customer c
LEFT JOIN visits v
    ON c.customer_id = v.customer_id
GROUP BY
    c.customer_id,
    c.customer_name;

-- 4. Customers placing orders
 SELECT DISTINCT
    c.customer_id,
    c.customer_name
FROM customer c
JOIN orders o
    ON c.customer_id = o.customer_id;


-- 5. Number of orders by customer
SELECT
    customer_id,
    COUNT(order_id) AS order_count
FROM orders
GROUP BY customer_id;
