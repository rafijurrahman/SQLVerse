-- ============================================================
-- SQL Master
-- Lesson: SQL-171 — Query Optimization Basics
-- ============================================================

-- Question 1
SELECT
    order_id,
    status,
    total_amount
FROM orders
WHERE status = 'Completed';

-- Question 2
-- Version A (Unoptimized):
SELECT
    *
FROM orders
WHERE status = 'Completed' AND total_amount > 2000;

-- Version B (Optimized):
SELECT
    order_id,
    total_amount
FROM orders
WHERE status = 'Completed' AND total_amount > 2000;

-- Question 3
SELECT
    order_id,
    customer_id,
    order_date,
    total_amount
FROM orders
WHERE status = 'Completed' AND order_date BETWEEN '2024-01-01' AND '2024-03-31';

-- Question 4
-- Optimized query using specific columns AND index-friendly date range:
SELECT
    order_id,
    customer_id,
    order_date,
    status,
    total_amount
FROM orders
WHERE order_date BETWEEN '2024-01-01' AND '2024-12-31' AND status IN ('Completed', 'Shipped');
