-- ============================================================
-- SQL Master
-- Lesson: SQL-C022 — EXISTS vs IN
-- ============================================================

-- Question 1
-- A
SELECT
    *
FROM customers
WHERE customer_id IN ( SELECT customer_id FROM orders );

-- B
SELECT
    *
FROM customers c
WHERE EXISTS ( SELECT 1 FROM orders o WHERE o.customer_id = c.customer_id );

-- Question 2
-- IN approach
SELECT
    *
FROM customers
WHERE customer_type = 'Premium' AND customer_id IN ( SELECT customer_id FROM orders WHERE status = 'Completed' );

-- EXISTS approach
SELECT
    *
FROM customers c
WHERE customer_type = 'Premium' AND EXISTS ( SELECT 1 FROM orders o WHERE o.customer_id = c.customer_id AND o.status = 'Completed' );

-- Question 3
-- A: IN approach
SELECT
    *
FROM customers
WHERE customer_id IN ( SELECT customer_id FROM orders WHERE total_amount > 5000 );

-- B: EXISTS approach
SELECT
    c.*
FROM customers c
WHERE EXISTS ( SELECT 1 FROM orders o WHERE o.customer_id = c.customer_id AND o.total_amount > 5000 );

-- Question 4
-- NOT EXISTS is safer than NOT IN which fails if any subquery value IS NULL
SELECT
    c.*
FROM customers c
WHERE NOT EXISTS ( SELECT 1 FROM orders o WHERE o.customer_id = c.customer_id );
