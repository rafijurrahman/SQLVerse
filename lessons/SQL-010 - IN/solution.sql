-- ============================================================
-- SQL Master
-- Lesson: SQL-010 — IN
-- ============================================================

-- Question 1
SELECT
    *
FROM products
WHERE category IN ('Electronics', 'Stationery');

-- Question 2
SELECT
    *
FROM products
WHERE brand IN ('Sony', 'Logitech', 'HP');

-- Question 3
SELECT
    *
FROM products
WHERE category IN ('Electronics', 'Electrical', 'Furniture');

-- Question 4
SELECT
    product_name,
    brand,
    category,
    price
FROM products
WHERE category NOT IN ('Stationery', 'Decor')
ORDER BY category;
