-- ============================================================
-- SQL Master
-- Lesson: SQL-121 — Subquery in WHERE
-- ============================================================

-- Question 1
SELECT
    order_id,
    customer_id,
    order_date,
    status,
    total_amount
FROM orders
WHERE total_amount > ( SELECT AVG(total_amount) FROM orders );

-- Question 2
SELECT
    customer_id,
    first_name,
    last_name,
    email,
    city,
    customer_type
FROM customers
WHERE customer_id IN ( SELECT customer_id FROM orders );

-- Question 3
SELECT
    customer_id,
    first_name,
    last_name,
    email,
    city,
    customer_type
FROM customers
WHERE customer_type = 'Premium' AND customer_id IN ( SELECT customer_id FROM orders WHERE status = 'Completed' );

-- Question 4
SELECT
    customer_id,
    first_name,
    last_name,
    email,
    city,
    customer_type
FROM customers
WHERE customer_id IN ( SELECT customer_id FROM orders GROUP BY customer_id HAVING SUM(total_amount) > 5000 );
