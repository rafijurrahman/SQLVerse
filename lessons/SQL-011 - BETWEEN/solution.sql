-- ============================================================
-- SQL Master
-- Lesson: SQL-011 — BETWEEN
-- ============================================================

-- Question 1
SELECT
    *
FROM products
WHERE price BETWEEN 500 AND 3000;

-- Question 2
SELECT
    *
FROM products
WHERE stock BETWEEN 50 AND 250;

-- Question 3
SELECT
    product_name,
    brand,
    price
FROM products
WHERE price BETWEEN 300 AND 1500;

-- Question 4
SELECT
    product_name,
    brand,
    price
FROM products
WHERE category = 'Electronics' AND price BETWEEN 600 AND 2000
ORDER BY price ASC;
