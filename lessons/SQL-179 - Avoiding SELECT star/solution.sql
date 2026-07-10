-- ============================================================
-- SQL Master
-- Lesson: SQL-179 — Avoiding SELECT star
-- ============================================================

-- Question 1
-- Unoptimized
SELECT
    *
FROM orders;

-- Optimized
SELECT
    order_id,
    status,
    total_amount
FROM orders;

-- Question 2
SELECT
    customer_id,
    status
FROM orders
WHERE status = 'Completed';

-- Question 3
SELECT
    order_id,
    customer_id,
    status,
    total_amount
FROM orders;

-- Explanation:
-- (A) Less network bandwidth: Only requested columns are transferred across the network.
-- (B) Covering index: Eliminates table lookup overhead WHEN all requested columns are IN the index.
-- (C) Future-proof: Avoids retrieving new OR large columns that might be added to the schema later.;

-- Question 4
-- CREATE INDEX idx_covering ON orders(status, total_amount, customer_id);

EXPLAIN
SELECT
    status,
    total_amount,
    customer_id
FROM orders
WHERE status = 'Completed';
