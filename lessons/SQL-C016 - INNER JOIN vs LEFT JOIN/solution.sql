-- ============================================================
-- SQL Master
-- Lesson: SQL-C016 — INNER JOIN vs LEFT JOIN
-- ============================================================

-- Question 1
SELECT
    COUNT(*)
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id;

SELECT
    COUNT(*)
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

-- Question 2
--
INNER JOIN 
SELECT
    c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id;

--
LEFT JOIN showing rows only IN
LEFT JOIN 
SELECT
    c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- Question 3
-- A: Customers WITH orders (INNER JOIN)
SELECT
    c.first_name,
    c.last_name,
    o.order_id,
    o.total_amount
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id;

-- B: All customers (LEFT JOIN)
SELECT
    c.first_name,
    c.last_name,
    o.order_id,
    o.total_amount
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

-- Question 4
SELECT
    (
    SELECT
        COUNT(*)
    FROM customers c
    LEFT JOIN orders o ON c.customer_id = o.customer_id
) AS left_join_count,
    (
    SELECT
        COUNT(*)
    FROM customers c
    INNER JOIN orders o ON c.customer_id = o.customer_id
) AS inner_join_count,
    (
    SELECT
        COUNT(*)
    FROM customers c
    LEFT JOIN orders o ON c.customer_id = o.customer_id
    WHERE o.order_id IS NULL
) AS unmatched_count;
