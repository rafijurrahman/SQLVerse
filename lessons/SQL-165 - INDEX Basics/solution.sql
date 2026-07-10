-- ============================================================
-- SQL Master
-- Lesson: SQL-165 — INDEX Basics
-- ============================================================

-- Question 1
CREATE INDEX idx_status ON orders(status);

SELECT
    *
FROM orders
WHERE status = 'Completed';

-- Question 2
CREATE INDEX idx_customer ON orders(customer_id);

-- Explanation:
-- The index creates a B-Tree structure ON the customer_id column.
-- This allows MySQL to perform a logarithmic-time lookup (O(log N)) instead of a full table scan (O(N)),
-- quickly locating the pointer to the rows
WHERE customer_id = 1.
SELECT
    *
FROM orders
WHERE customer_id = 1;

-- Question 3
CREATE INDEX idx_status ON orders(status);

EXPLAIN
SELECT
    *
FROM orders
WHERE status = 'Completed';

-- Question 4
CREATE INDEX idx_status ON orders(status);

CREATE INDEX idx_order_date ON orders(order_date);

CREATE INDEX idx_customer ON orders(customer_id);

SELECT
    *
FROM orders
WHERE status = 'Completed' AND order_date = '2024-01-05' AND customer_id = 1;

-- Explanation:
-- MySQL's optimizer typically chooses the single most selective index (the one WITH the lowest cardinality/estimated rows)
-- to filter first, AND THEN filters the remaining conditions IN memory.;
