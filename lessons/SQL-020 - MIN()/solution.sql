-- ============================================================
-- SQL Master
-- Lesson: SQL-020 — MIN()
-- ============================================================

-- Question 1
SELECT
    MIN(price)
FROM products;

-- Question 2
SELECT
    category,
    MIN(price)
FROM products
GROUP BY category;

-- Question 3
SELECT
    category,
    MIN(price) AS min_price
FROM products
GROUP BY category
ORDER BY min_price ASC;

-- Question 4
SELECT
    product_name,
    brand,
    category,
    price
FROM products
WHERE price = ( SELECT MIN(price) FROM products );
