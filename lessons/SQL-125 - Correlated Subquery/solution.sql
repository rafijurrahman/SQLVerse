-- ============================================================
-- SQL Master
-- Lesson: SQL-125 — Correlated Subquery
-- ============================================================

-- Question 1
SELECT
    customer_id,
    first_name,
    last_name
FROM customers c
WHERE ( SELECT COUNT(*) FROM orders o WHERE o.customer_id = c.customer_id ) > 0;

-- Question 2
SELECT
    customer_id,
    first_name,
    last_name
FROM customers c
WHERE ( SELECT status FROM orders o WHERE o.customer_id = c.customer_id ORDER BY order_date DESC LIMIT 1 ) = 'Completed';

-- Question 3
SELECT
    customer_id,
    first_name,
    last_name
FROM customers c
WHERE ( SELECT total_amount FROM orders o WHERE o.customer_id = c.customer_id ORDER BY order_date DESC LIMIT 1 ) > ( SELECT AVG(total_amount) FROM orders o2 WHERE o2.customer_id = c.customer_id );

-- Question 4
SELECT
    c.first_name,
    (
    SELECT
        COUNT(DISTINCT o2.customer_id)
    FROM orders o2
    WHERE ( SELECT SUM(total_amount) FROM orders WHERE customer_id = o2.customer_id ) >= ( SELECT SUM(total_amount) FROM orders WHERE customer_id = c.customer_id )
) AS `RANK`
FROM customers c
WHERE c.customer_id IN ( SELECT DISTINCT customer_id FROM orders );
