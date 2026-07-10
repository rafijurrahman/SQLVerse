-- ============================================================
-- SQL Master
-- Lesson: SQL-C033 — Index Scan vs Full Table Scan
-- ============================================================

-- Question 1
EXPLAIN
SELECT
    *
FROM orders
WHERE status = 'Completed';

-- Question 2
CREATE INDEX idx_status ON orders(status);

EXPLAIN
SELECT
    *
FROM orders
WHERE status = 'Completed';

-- Question 3
-- Before Index
EXPLAIN
SELECT
    *
FROM orders
WHERE total_amount > 5000;

-- Create Index
CREATE INDEX idx_total_amount ON orders(total_amount);

-- After Index
EXPLAIN
SELECT
    *
FROM orders
WHERE total_amount > 5000;

-- Question 4
-- The database optimizer will choose a Full Table Scan OVER an Index Scan if the filtered condition returns a large percentage of rows
FROM the table, making individual index seeks more expensive than sequential scanning.;
