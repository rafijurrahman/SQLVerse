-- ============================================================
-- SQL Master
-- Lesson: SQL-119 — Introduction to Subquery
-- ============================================================

-- Question 1
SELECT
    customer_id,
    first_name,
    last_name,
    email,
    city,
    customer_type
FROM customers
WHERE city = ( SELECT city FROM customers WHERE customer_id = 1 );

-- Question 2
SELECT
    order_id,
    customer_id,
    order_date,
    status,
    total_amount
FROM orders
WHERE total_amount > ( SELECT AVG(total_amount) FROM orders );

-- Question 3
SELECT
    customer_id,
    first_name,
    last_name,
    email,
    city,
    customer_type
FROM customers
WHERE customer_id IN ( SELECT customer_id FROM orders WHERE total_amount > 5000 );

-- Question 4
SELECT
    c.first_name,
    c.last_name,
    o.total_amount
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
WHERE o.total_amount = ( SELECT MAX(total_amount) FROM orders );
