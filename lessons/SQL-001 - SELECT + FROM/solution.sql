-- ============================================================
-- SQL Master
-- Lesson: SQL-001 — SELECT + FROM
-- ============================================================

-- Question 1
SELECT
    *
FROM products;

-- Question 2
SELECT
    product_name,
    brand,
    price
FROM products;

-- Question 3
SELECT
    *
FROM products;

-- Question 4
SELECT
    product_name,
    category,
    price AS "Selling Price"
FROM products;
