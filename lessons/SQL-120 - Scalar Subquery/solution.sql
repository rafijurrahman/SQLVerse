-- ============================================================
-- SQL Master
-- Lesson: SQL-120 — Scalar Subquery
-- ============================================================

-- Question 1
SELECT
    (
    SELECT
        COUNT(*)
    FROM orders
) AS total_orders;

-- Question 2
SELECT
    order_id,
    total_amount,
    (
    SELECT
        AVG(total_amount)
    FROM orders
) AS avg_amount
FROM orders;

-- Question 3
SELECT
    first_name,
    last_name,
    (
    SELECT
        COUNT(*)
    FROM orders
) AS total_company_orders
FROM customers;

-- Question 4
SELECT
    order_id,
    total_amount,
    (
    SELECT
        MAX(total_amount)
    FROM orders
) - total_amount AS gap_from_max
FROM orders
ORDER BY gap_from_max ASC;
