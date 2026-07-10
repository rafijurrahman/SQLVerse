-- ============================================================
-- SQL Master
-- Lesson: SQL-061 — MIN() with GROUP BY
-- ============================================================

-- Question 1
SELECT
    category,
    MIN(price)
FROM products
GROUP BY category;

-- Question 2
SELECT
    brand,
    MIN(stock)
FROM products
GROUP BY brand;

-- Question 3
SELECT
    category,
    MIN(price) AS "Cheapest Price"
FROM products
GROUP BY category
ORDER BY MIN(price) ASC;

-- Question 4
SELECT
    product_name,
    category,
    price
FROM products
WHERE price = ( SELECT MIN(price) FROM products p2 WHERE p2.category = products.category );
