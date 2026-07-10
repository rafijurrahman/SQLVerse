-- ============================================================
-- SQL Master
-- Lesson: SQL-005 — DISTINCT
-- ============================================================

-- Question 1
SELECT DISTINCT
    brand
FROM products;

-- Question 2
SELECT DISTINCT
    brand,
    category
FROM products;

-- Question 3
SELECT DISTINCT
    category
FROM products;

-- Question 4
SELECT DISTINCT
    brand
FROM products
WHERE category = 'Electronics';
