-- ============================================================
-- SQL Master
-- Lesson: SQL-173 — Full Table Scan
-- ============================================================

-- Question 1
EXPLAIN
SELECT
    *
FROM orders
WHERE total_amount > 2000;

-- Question 2
-- Clustered Index Seek (Fast):
SELECT
    *
FROM orders
WHERE order_id = 1001;

-- Full Table Scan (Slow):
SELECT
    *
FROM orders
WHERE total_amount = 3500;

-- Question 3
-- Before index creation:
EXPLAIN
SELECT
    *
FROM orders
WHERE total_amount BETWEEN 2000 AND 6000;

-- Add index:
CREATE INDEX idx_total_amount ON orders(total_amount);

-- After index creation:
EXPLAIN
SELECT
    *
FROM orders
WHERE total_amount BETWEEN 2000 AND 6000;

-- Question 4
-- (A) Index Lookup:
EXPLAIN
SELECT
    *
FROM orders
WHERE order_id = 1001;

-- (B) Full Table Scan:
EXPLAIN
SELECT
    *
FROM orders
WHERE total_amount > 2000;

-- (C) Full Table Scan due to leading wildcard:
EXPLAIN
SELECT
    *
FROM orders
WHERE status LIKE '%ompleted';
