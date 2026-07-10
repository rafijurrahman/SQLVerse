-- ============================================================
-- SQL Master
-- Lesson: SQL-004 — LIMIT or TOP
-- ============================================================

-- Question 1
SELECT
    *
FROM products
LIMIT 5;

-- Question 2
SELECT
    *
FROM products
ORDER BY price DESC
LIMIT 3;

-- Question 3
SELECT
    product_name,
    brand,
    units_sold
FROM products
ORDER BY units_sold DESC
LIMIT 5;

-- Question 4
SELECT
    product_name,
    brand,
    price
FROM products
WHERE category = 'Electronics'
ORDER BY price ASC
LIMIT 3;
