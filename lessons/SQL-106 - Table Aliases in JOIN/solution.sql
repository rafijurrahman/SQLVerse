-- ============================================================
-- SQL Master
-- Lesson: SQL-106 — Table Aliases in JOIN
-- ============================================================

-- Question 1
SELECT
    c.first_name,
    o.order_id
FROM customers AS c
INNER JOIN orders AS o ON c.customer_id = o.customer_id;

-- Question 2
SELECT
    c.first_name,
    o.order_date,
    oi.quantity,
    oi.unit_price
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN order_items oi ON o.order_id = oi.order_id;

-- Question 3
SELECT
    c.first_name,
    c.last_name,
    p.product_name,
    py.method AS payment_method
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN order_items oi ON o.order_id = oi.order_id
INNER JOIN products p ON oi.product_id = p.product_id
INNER JOIN payments py ON o.order_id = py.order_id;

-- Question 4
SELECT
    e.customer_id AS emp_id,
    e.first_name AS Employee,
    m.first_name AS Manager
FROM customers e
LEFT JOIN customers m ON e.customer_id = m.customer_id;
