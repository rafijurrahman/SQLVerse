-- ============================================================
-- SQL Master
-- Lesson: SQL-092 — LEFT JOIN
-- ============================================================

-- Question 1
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id,
    o.order_date,
    o.total_amount
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

-- Question 2
SELECT
    c.customer_id,
    c.first_name,
    c.last_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- Question 3
SELECT
    c.first_name,
    c.last_name,
    c.email,
    c.city
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- Question 4
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    MAX(o.order_date) AS "Most Recent Order"
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id;
