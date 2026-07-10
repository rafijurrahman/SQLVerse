-- ============================================================
-- SQL Master
-- Lesson: SQL-104 — Joining Three Tables
-- ============================================================

-- Question 1
SELECT
    c.first_name,
    c.last_name,
    p.product_name,
    oi.quantity
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN order_items oi ON o.order_id = oi.order_id
INNER JOIN products p ON oi.product_id = p.product_id;

-- Question 2
SELECT
    p.product_id,
    p.product_name,
    SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM orders o
INNER JOIN order_items oi ON o.order_id = oi.order_id
INNER JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_id, p.product_name;

-- Question 3
SELECT
    c.first_name,
    c.last_name,
    p.product_name,
    oi.quantity,
    (oi.quantity * oi.unit_price) AS line_item_total
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN order_items oi ON o.order_id = oi.order_id
INNER JOIN products p ON oi.product_id = p.product_id
WHERE o.status = 'Completed';

-- Question 4
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    p.product_id,
    p.product_name,
    SUM(oi.quantity) AS total_quantity,
    SUM(oi.quantity * oi.unit_price) AS total_spent
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN order_items oi ON o.order_id = oi.order_id
INNER JOIN products p ON oi.product_id = p.product_id
GROUP BY c.customer_id, c.first_name, c.last_name, p.product_id, p.product_name
ORDER BY total_spent DESC;
