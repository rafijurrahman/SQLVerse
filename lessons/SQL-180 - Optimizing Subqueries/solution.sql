-- ============================================================
-- SQL Master
-- Lesson: SQL-180 — Optimizing Subqueries
-- ============================================================

-- Question 1
SELECT DISTINCT
    c.customer_id,
    c.first_name,
    c.last_name,
    c.city
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.status = 'Completed';

-- Question 2
-- (A) Non-correlated: Subquery executes exactly once
SELECT
    *
FROM orders o
WHERE o.total_amount > ( SELECT AVG(total_amount) FROM orders );

-- (B) Correlated: Subquery executes once for every row of the outer table
SELECT
    *
FROM orders o
WHERE o.total_amount > ( SELECT AVG(i.total_amount) FROM orders i WHERE i.customer_id = o.customer_id );

-- Question 3
SELECT
    c.first_name,
    COUNT(o.order_id) AS cnt
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name;

-- Question 4
-- (A) Correlated subquery (slow)
EXPLAIN
SELECT
    c.customer_id,
    c.first_name
FROM customers c
WHERE EXISTS ( SELECT 1 FROM orders o WHERE o.customer_id = c.customer_id AND o.total_amount > ( SELECT AVG(total_amount) FROM orders ) );

-- (B) Non-correlated subquery (better)
EXPLAIN
SELECT
    c.customer_id,
    c.first_name
FROM customers c
WHERE c.customer_id IN ( SELECT customer_id FROM orders WHERE total_amount > ( SELECT AVG(total_amount) FROM orders ) );

-- (C)
JOIN WITH
HAVING (often best) EXPLAIN
SELECT
    c.customer_id,
    c.first_name
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name
HAVING MAX(o.total_amount) > ( SELECT AVG(total_amount) FROM orders );
