-- ============================================================
-- SQL Master
-- Lesson: SQL-175 — Optimizing WHERE Clauses
-- ============================================================

-- Question 1
SELECT
    *
FROM orders
WHERE order_date BETWEEN '2024-01-01' AND '2024-12-31';

-- Question 2
-- (A) Unoptimized: total_amount + 100 > 3600 (performs arithmetic ON column, preventing index use)
SELECT
    *
FROM orders
WHERE total_amount + 100 > 3600;

-- (B) Optimized: total_amount > 3500 (compares column directly, which is index-friendly)
SELECT
    *
FROM orders
WHERE total_amount > 3500;

-- Question 3
-- Good: status = 'Completed' (uses index ON status directly)
SELECT
    *
FROM orders
WHERE status = 'Completed';

-- Bad: UPPER(status) = 'COMPLETED' (wraps column IN UPPER function, bypassing index)
SELECT
    *
FROM orders
WHERE UPPER(status) = 'COMPLETED';

-- Question 4
-- (A) Optimized SUBSTRING to LIKE
SELECT
    *
FROM orders
WHERE status LIKE 'Comp%';

-- (B) Optimized arithmetic expression removal
SELECT
    *
FROM orders
WHERE order_id = 1001;

-- (C) Optimized YEAR() to range search (BETWEEN)
SELECT
    *
FROM orders
WHERE order_date BETWEEN '2024-01-01' AND '2024-12-31';
