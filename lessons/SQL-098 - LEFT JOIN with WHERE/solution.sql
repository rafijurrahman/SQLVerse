-- ============================================================
-- SQL Master
-- Lesson: SQL-098 — LEFT JOIN with WHERE
-- ============================================================

-- Question 1
SELECT
    c.customer_id,
    c.first_name,
    c.last_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;

-- Question 2
SELECT
    c.customer_id,
    c.first_name,
    o.order_id,
    o.status
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.status = 'Completed' OR o.order_id IS NULL;

-- Question 3
SELECT
    c.customer_id,
    c.first_name,
    c.city,
    o.order_id,
    o.status
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL OR (c.city = 'Dhaka' AND o.status = 'Completed');

-- Question 4
-- Version 1: Filter IN ON clause
SELECT
    c.customer_id,
    c.first_name,
    o.order_id,
    o.status
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id AND o.status = 'Completed';

-- Version 2: Filter IN
WHERE clause
SELECT
    c.customer_id,
    c.first_name,
    o.order_id,
    o.status
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.status = 'Completed';
