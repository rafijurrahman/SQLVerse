-- ============================================================
-- SQL Master
-- Lesson: SQL-008 — OR
-- ============================================================

-- Question 1
SELECT
    *
FROM products
WHERE category = 'Electronics' OR category = 'Furniture';

-- Question 2
SELECT
    *
FROM products
WHERE brand = 'Walton' OR brand = 'Navana';

-- Question 3
SELECT
    *
FROM products
WHERE price > 5000 OR (category = 'Electronics' AND price > 2000);

-- Question 4
SELECT
    product_name,
    brand,
    price
FROM products
WHERE brand = 'Logitech' OR brand = 'Sony'
ORDER BY price DESC;
