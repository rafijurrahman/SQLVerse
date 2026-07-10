-- ============================================================
-- SQL Master
-- Lesson: SQL-021 — MAX()
-- ============================================================

-- Question 1
SELECT
    MAX(price)
FROM products;

-- Question 2
SELECT
    category,
    MAX(price)
FROM products
GROUP BY category;

-- Question 3
SELECT
    category,
    MAX(price) AS max_price
FROM products
GROUP BY category
ORDER BY max_price DESC;

-- Question 4
SELECT
    product_name,
    brand
FROM products
WHERE category = 'Electronics' AND price = ( SELECT MAX(price) FROM products WHERE category = 'Electronics' );
