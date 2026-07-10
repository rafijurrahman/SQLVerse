-- ============================================================
-- SQL Master
-- Lesson: SQL-062 — MAX() with GROUP BY
-- ============================================================

-- Question 1
SELECT
    category,
    MAX(price)
FROM products
GROUP BY category;

-- Question 2
SELECT
    brand,
    MAX(stock)
FROM products
GROUP BY brand;

-- Question 3
SELECT
    category,
    MAX(price) AS "Premium Price"
FROM products
GROUP BY category
ORDER BY MAX(price) DESC;

-- Question 4
SELECT
    category,
    MIN(price) AS "Min Price",
    MAX(price) AS "Max Price"
FROM products
GROUP BY category
HAVING MAX(price) > MIN(price) * 2;
