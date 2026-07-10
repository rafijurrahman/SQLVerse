-- ============================================================
-- SQL Master
-- Lesson: SQL-110 — INNER JOIN Common Mistakes
-- ============================================================

-- Question 1
-- Wrong version
SELECT
    c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
JOIN orders o;

-- Correct version
SELECT
    c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id;

-- Question 2
-- Wrong version
SELECT
    c.first_name,
    o.order_id
FROM customers c
INNER JOIN orders o ON c.city = o.status;

-- Correct version
SELECT
    c.first_name,
    o.order_id
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id;

-- Question 3
SELECT
    c.*,
    o.*
FROM customers c, orders o
WHERE c.customer_id = o.customer_id;

-- Question 4
-- Wrong version
--
SELECT
    customer_id,
    order_date
FROM customers
INNER JOIN orders ON customer_id = customer_id;

-- Correct version
SELECT
    c.customer_id,
    o.order_date
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id;
