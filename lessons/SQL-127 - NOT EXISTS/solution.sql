-- ============================================================
-- SQL Master
-- Lesson: SQL-127 — NOT EXISTS
-- ============================================================

-- Question 1
SELECT
    customer_id,
    first_name,
    last_name
FROM customers c
WHERE NOT EXISTS ( SELECT 1 FROM orders o WHERE o.customer_id = c.customer_id );

-- Question 2
SELECT
    customer_id,
    first_name,
    last_name
FROM customers c
WHERE NOT EXISTS ( SELECT 1 FROM orders o WHERE o.customer_id = c.customer_id AND o.status = 'Cancelled' );

-- Question 3
SELECT
    customer_id,
    first_name,
    last_name
FROM customers c
WHERE NOT EXISTS ( SELECT 1 FROM orders o WHERE o.customer_id = c.customer_id AND o.total_amount > 8000 );

-- Question 4
SELECT
    customer_id,
    first_name,
    last_name
FROM customers c
WHERE EXISTS ( SELECT 1 FROM orders o WHERE o.customer_id = c.customer_id ) AND NOT EXISTS ( SELECT 1 FROM orders o WHERE o.customer_id = c.customer_id AND o.status = 'Completed' );
