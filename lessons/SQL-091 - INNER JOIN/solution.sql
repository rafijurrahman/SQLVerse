-- ============================================================
-- SQL Master
-- Lesson: SQL-091 — INNER JOIN
-- ============================================================

-- Question 1
SELECT
    c.first_name,
    c.last_name,
    o.order_id
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id;

-- Question 2
SELECT
    c.first_name,
    c.last_name,
    o.order_date,
    o.status,
    o.total_amount
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
WHERE o.status = 'Completed';

-- Question 3
SELECT
    c.first_name,
    c.last_name,
    COUNT(o.order_id) AS "Total Orders Placed",
    SUM(o.total_amount) AS "Total Amount Spent"
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id;

-- Question 4
SELECT
    c.first_name,
    c.last_name,
    o.order_id,
    oi.product_id,
    oi.quantity,
    oi.unit_price
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.order_date BETWEEN '2024-01-01' AND '2024-01-31';
