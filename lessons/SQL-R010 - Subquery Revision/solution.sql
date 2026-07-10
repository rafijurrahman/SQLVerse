-- ============================================================
-- SQL Master
-- Lesson: SQL-R010 — Subquery Revision
-- ============================================================

-- Question 1
-- A: Scalar
SELECT
    (
    SELECT
        COUNT(*)
    FROM orders
) AS total_orders;

-- B:
WHERE IN
SELECT
    *
FROM customers
WHERE customer_id IN ( SELECT customer_id FROM orders WHERE total_amount > 3000 );

-- C: EXISTS
SELECT
    *
FROM customers c
WHERE EXISTS ( SELECT 1 FROM orders o WHERE o.customer_id = c.customer_id AND o.status = 'Completed' );

-- D: NOT EXISTS
SELECT
    *
FROM customers c
WHERE NOT EXISTS ( SELECT 1 FROM orders o WHERE o.customer_id = c.customer_id );

-- Question 2
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    spend_sub.total_spent
FROM customers c
INNER JOIN ( SELECT customer_id, SUM(total_amount) AS total_spent FROM orders GROUP BY customer_id ) AS spend_sub ON c.customer_id = spend_sub.customer_id
WHERE spend_sub.total_spent > 5000;

-- Question 3
-- A: VIP customers AND order counts
SELECT
    first_name,
    last_name,
    (
    SELECT
        COUNT(*)
    FROM orders o
    WHERE o.customer_id = c.customer_id
) AS order_count
FROM customers c
WHERE customer_type = 'VIP';

-- B: Premium customers who never cancelled
SELECT
    *
FROM customers c
WHERE customer_type = 'Premium' AND NOT EXISTS ( SELECT 1 FROM orders o WHERE o.customer_id = c.customer_id AND o.status = 'Cancelled' );

-- C: Customers WITH above-average spending
SELECT
    c.customer_id,
    c.first_name,
    c.last_name
FROM customers c
WHERE ( SELECT SUM(total_amount) FROM orders o WHERE o.customer_id = c.customer_id ) > ( SELECT AVG(total_amount) FROM orders );

-- Question 4
SELECT
    c.first_name,
    c.last_name,
    (
    SELECT
        COUNT(*)
    FROM ( SELECT customer_id, SUM(total_amount) AS total_spent FROM orders GROUP BY customer_id ) AS c2
    WHERE c2.total_spent > ( SELECT SUM(total_amount) FROM orders o WHERE o.customer_id = c.customer_id )
) + 1 AS spend_rank
FROM customers c
WHERE EXISTS ( SELECT 1 FROM orders o WHERE o.customer_id = c.customer_id );
