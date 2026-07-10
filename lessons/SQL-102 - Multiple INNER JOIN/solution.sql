-- ============================================================
-- SQL Master
-- Lesson: SQL-102 — Multiple INNER JOIN
-- ============================================================

-- Question 1
SELECT
    c.first_name,
    c.last_name,
    o.order_id,
    p.method
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN payments p ON o.order_id = p.order_id;

-- Question 2
SELECT
    c.first_name,
    c.last_name,
    o.order_id,
    p.amount,
    p.method
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN payments p ON o.order_id = p.order_id
WHERE p.status = 'Completed';

-- Question 3
SELECT
    c.first_name,
    c.last_name,
    o.order_date,
    o.total_amount AS order_amount,
    p.amount AS payment_amount,
    p.method
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN payments p ON o.order_id = p.order_id
WHERE p.status = 'Completed';

-- Question 4
SELECT
    c.first_name,
    c.last_name,
    pr.product_name,
    oi.quantity,
    oi.unit_price,
    (oi.quantity * oi.unit_price) AS line_value
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN order_items oi ON o.order_id = oi.order_id
INNER JOIN products pr ON oi.product_id = pr.product_id
ORDER BY (oi.quantity * oi.unit_price) DESC;
