-- ============================================================
-- SQL Master
-- Lesson: SQL-176 — Optimizing JOIN Queries
-- ============================================================

-- Question 1
EXPLAIN
SELECT
    c.customer_id,
    c.first_name,
    o.order_id,
    o.total_amount
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id;

-- Question 2
-- (A) Less optimal (JOIN THEN filter order: status filtering occurs after relationship lookup)
SELECT
    c.first_name,
    o.total_amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.status = 'Completed';

-- (B) More optimal (HAVING index ON orders.status allows the optimizer to filter rows before joining)
-- CREATE INDEX idx_orders_status ON orders(status);

SELECT
    c.first_name,
    o.total_amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.status = 'Completed';

-- Question 3
SELECT DISTINCT
    c.customer_id,
    c.first_name,
    c.last_name,
    c.city
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
WHERE o.status = 'Completed';

-- Question 4
EXPLAIN
SELECT
    c.first_name,
    o.total_amount,
    summary.total_spent
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN ( SELECT customer_id, SUM(total_amount) AS total_spent FROM orders GROUP BY customer_id ) summary ON c.customer_id = summary.customer_id
WHERE o.status = 'Completed';

-- Discussion ON Question 4:
-- 1. Driving Table: The optimizer starts WITH the table filtering the most rows (orders o if status is indexed).
-- 2. Index Effects: The PRIMARY KEY ON customers(customer_id) ensures fast
JOIN lookups. -- 3. Reordering: MySQL's optimizer automatically reorders JOIN operations based ON cost, but filtering early reduces the dataset size before joining.;
