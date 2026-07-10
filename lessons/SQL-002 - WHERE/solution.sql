-- ============================================================
-- SQL Master
-- Lesson: SQL-002 — WHERE
-- ============================================================

-- Question 1
SELECT
    *
FROM products
WHERE is_active = 1;

-- Question 2
SELECT
    *
FROM products
WHERE category = 'Electronics';

-- Question 3
SELECT
    *
FROM products
WHERE is_active = 1 AND category = 'Electronics' AND price > 500;

-- Question 4
SELECT
    *
FROM products
WHERE is_active = 1 AND (category = 'Furniture' OR price > 2000);
