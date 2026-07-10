-- ============================================================
-- SQL Master
-- Lesson: SQL-124 — Nested Subquery
-- ============================================================

-- Question 1
SELECT
    customer_id,
    first_name,
    last_name,
    city
FROM customers
WHERE city IN ( SELECT city FROM customers GROUP BY city HAVING COUNT(*) > 2 );

-- Question 2
SELECT
    order_id,
    customer_id,
    total_amount
FROM orders
WHERE customer_id IN ( SELECT customer_id FROM customers WHERE customer_type IN ( SELECT customer_type FROM customers WHERE city = 'Dhaka' GROUP BY customer_type HAVING COUNT(*) > 1 ) );

-- Question 3
SELECT
    c.first_name,
    c.last_name,
    o.order_id,
    o.total_amount
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
WHERE o.total_amount > ( SELECT AVG(total_amount) FROM orders WHERE customer_id IN ( SELECT customer_id FROM customers WHERE customer_type = 'Premium' ) );

-- Question 4
SELECT
    customer_id,
    first_name,
    last_name,
    city
FROM customers
WHERE city IN ( SELECT city FROM customers WHERE customer_type = 'VIP' ) AND customer_id IN ( SELECT customer_id FROM orders WHERE total_amount > 5000 );
