-- ============================================================
-- SQL Master
-- Lesson: SQL-126 — EXISTS
-- ============================================================

-- Question 1
SELECT
    customer_id,
    first_name,
    last_name
FROM customers c
WHERE EXISTS ( SELECT 1 FROM orders o WHERE o.customer_id = c.customer_id );

-- Question 2
SELECT
    customer_id,
    first_name,
    last_name
FROM customers c
WHERE EXISTS ( SELECT 1 FROM orders o WHERE o.customer_id = c.customer_id AND o.status = 'Completed' );

-- Question 3
SELECT
    customer_id,
    first_name,
    last_name
FROM customers c
WHERE EXISTS ( SELECT 1 FROM orders o WHERE o.customer_id = c.customer_id AND o.status = 'Completed' AND o.total_amount > 3000 );

-- Question 4
SELECT
    customer_id,
    first_name,
    last_name,
    customer_type,
    city
FROM customers c
WHERE customer_type = 'Premium' AND city = 'Dhaka' AND EXISTS ( SELECT 1 FROM orders o WHERE o.customer_id = c.customer_id AND o.status = 'Completed' );
