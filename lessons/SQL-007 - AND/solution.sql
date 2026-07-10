-- ============================================================
-- SQL Master
-- Lesson: SQL-007 — AND
-- ============================================================

-- Question 1
SELECT
    *
FROM products
WHERE is_active = 1 AND category = 'Electronics';

-- Question 2
SELECT
    *
FROM products
WHERE is_active = 1 AND category = 'Electronics' AND price > 1000;

-- Question 3
SELECT
    *
FROM products
WHERE is_active = 1 AND category = 'Electronics' AND price < 2000;

-- Question 4
SELECT
    *
FROM products
WHERE is_active = 1 AND (brand = 'Logitech' OR brand = 'Sony') AND price > 500;
