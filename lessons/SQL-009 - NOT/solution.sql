-- ============================================================
-- SQL Master
-- Lesson: SQL-009 — NOT
-- ============================================================

-- Question 1
SELECT
    *
FROM products
WHERE NOT category = 'Electronics';

-- Question 2
SELECT
    *
FROM products
WHERE NOT brand = 'Walton';

-- Question 3
SELECT
    *
FROM products
WHERE NOT category = 'Furniture' AND stock > 50;

-- Question 4
SELECT
    *
FROM products
WHERE NOT brand = 'Navana' AND NOT category = 'Stationery' AND price > 500;
