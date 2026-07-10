-- ============================================================
-- SQL Master
-- Lesson: SQL-003 — ORDER BY
-- ============================================================

-- Question 1
SELECT
    *
FROM products
ORDER BY price ASC;

-- Question 2
SELECT
    *
FROM products
ORDER BY category ASC, price DESC;

-- Question 3
SELECT
    *
FROM products
ORDER BY stock ASC;

-- Question 4
SELECT
    product_name,
    brand,
    price
FROM products
ORDER BY brand ASC, price DESC;
