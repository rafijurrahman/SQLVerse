-- ============================================================
-- SQL Master
-- Lesson: SQL-166 — Clustered Index
-- ============================================================

-- Question 1
SELECT
    *
FROM orders
WHERE order_id = 1001;

-- Question 2
SELECT
    *
FROM orders
WHERE order_id BETWEEN 1003 AND 1007;

-- Question 3
SELECT
    *
FROM orders
ORDER BY order_id;

-- Explanation:
-- Since the clustered index stores physical rows IN order of the PRIMARY KEY, 
-- MySQL can retrieve the rows IN order without performing an extra sorting operation (filesort).;

-- Question 4
-- Clustered index lookup (directly retrieves row)
EXPLAIN
SELECT
    *
FROM orders
WHERE order_id = 1005;

-- Non-clustered index lookup (requires finding PRIMARY KEY, THEN retrieving row)
EXPLAIN
SELECT
    *
FROM orders
WHERE status = 'Completed';
