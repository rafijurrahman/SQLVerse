-- ============================================================
-- SQL Master
-- Lesson: SQL-105 — Joining Four Tables
-- ============================================================

-- Question 1
SELECT
    c.first_name,
    c.last_name,
    pr.product_name,
    py.method AS payment_method
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN order_items oi ON o.order_id = oi.order_id
INNER JOIN products pr ON oi.product_id = pr.product_id
INNER JOIN payments py ON o.order_id = py.order_id;

-- Question 2
SELECT
    c.first_name,
    c.last_name,
    pr.product_name,
    oi.quantity,
    oi.unit_price,
    py.method AS payment_method
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN order_items oi ON o.order_id = oi.order_id
INNER JOIN products pr ON oi.product_id = pr.product_id
INNER JOIN payments py ON o.order_id = py.order_id;

-- Question 3
SELECT
    c.first_name,
    c.last_name,
    o.order_date,
    pr.product_name,
    pr.category,
    oi.quantity,
    oi.unit_price,
    (oi.quantity * oi.unit_price) AS line_total
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN order_items oi ON o.order_id = oi.order_id
INNER JOIN products pr ON oi.product_id = pr.product_id
WHERE o.status = 'Completed';

-- Question 4
SELECT
    pr.category,
    SUM(oi.quantity) AS total_quantity,
    SUM(oi.quantity * oi.unit_price) AS total_revenue,
    COUNT(DISTINCT o.customer_id) AS unique_customers
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN order_items oi ON o.order_id = oi.order_id
INNER JOIN products pr ON oi.product_id = pr.product_id
GROUP BY pr.category
ORDER BY total_revenue DESC;
