-- ============================================================
-- SQL Master
-- Lesson: SQL-178 — Optimizing ORDER BY Queries
-- ============================================================

-- Question 1
SELECT
    *
FROM orders
ORDER BY order_id;

-- Question 2
-- CREATE INDEX idx_order_date ON orders(order_date);

SELECT
    *
FROM orders
ORDER BY order_date;

-- Question 3
-- CREATE INDEX idx_amount ON orders(total_amount);

EXPLAIN
SELECT
    *
FROM orders
ORDER BY total_amount DESC;

-- Question 4
-- (A)
ORDER BY order_id (Uses PRIMARY KEY index directly, avoiding filesort) EXPLAIN
SELECT
    *
FROM orders
ORDER BY order_id;

-- (B)
ORDER BY status (Uses status index, avoiding filesort) EXPLAIN
SELECT
    *
FROM orders
ORDER BY status;

-- (C)
ORDER BY total_amount (If no index exists, MySQL is forced to perform a filesort) EXPLAIN
SELECT
    *
FROM orders
ORDER BY total_amount;
