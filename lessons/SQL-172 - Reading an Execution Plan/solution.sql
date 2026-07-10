-- ============================================================
-- SQL Master
-- Lesson: SQL-172 — Reading an Execution Plan
-- ============================================================

-- Question 1
EXPLAIN
SELECT
    *
FROM orders
WHERE status = 'Completed';

-- Question 2
EXPLAIN
SELECT
    c.first_name,
    o.total_amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.status = 'Completed';

-- Question 3
-- EXPLAIN before indexing:
EXPLAIN
SELECT
    *
FROM orders
WHERE status = 'Completed' AND order_date > '2024-02-01';

-- Index optimization:
CREATE INDEX idx_status_date ON orders(status, order_date);

-- EXPLAIN after indexing:
EXPLAIN
SELECT
    *
FROM orders
WHERE status = 'Completed' AND order_date > '2024-02-01';

-- Question 4
-- (A) Simple
WHERE ON PRIMARY KEY: EXPLAIN
SELECT
    *
FROM orders
WHERE order_id = 1001;

-- (B)
WHERE ON non-indexed column: EXPLAIN
SELECT
    *
FROM orders
WHERE total_amount = 3500.00;

-- (C)
JOIN query: EXPLAIN
SELECT
    c.first_name,
    o.total_amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;
