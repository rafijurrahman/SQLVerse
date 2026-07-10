-- ============================================================
-- SQL Master
-- Lesson: SQL-017 — COUNT()
-- ============================================================

-- Question 1
SELECT
    COUNT(*)
FROM orders;

-- Question 2
SELECT
    COUNT(promo_code)
FROM orders;

-- Question 3
SELECT
    COUNT(*)
FROM orders
WHERE status = 'Completed';

-- Question 4
-- Query A: Counts all rows IN the table
SELECT
    COUNT(*)
FROM orders;

-- Query B: Counts only non-null VALUES IN promo_code column
SELECT
    COUNT(promo_code)
FROM orders;

-- Explanation: COUNT(*) counts every row IN the table, whereas COUNT(promo_code) ignores rows
WHERE promo_code IS NULL.;
