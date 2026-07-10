-- ============================================================
-- SQL Master
-- Lesson: SQL-C001 — AND vs OR vs NOT
-- ============================================================

-- Question 1
SELECT
    *
FROM products
WHERE is_active = 1 AND category = 'Electronics';

SELECT
    *
FROM products
WHERE category = 'Electronics' OR category = 'Furniture';

-- Question 2
SELECT
    *
FROM products
WHERE NOT category = 'Stationery';

SELECT
    *
FROM products
WHERE NOT is_active = 1;

-- Question 3
-- (A) Active Furniture products above 5000
SELECT
    *
FROM products
WHERE is_active = 1 AND category = 'Furniture' AND price > 5000;

-- (B) Products
FROM Logitech OR Sony
SELECT
    *
FROM products
WHERE brand = 'Logitech' OR brand = 'Sony';

-- (C) Products NOT out of stock AND NOT inactive
SELECT
    *
FROM products
WHERE NOT (stock = 0) AND NOT (is_active = 0);

-- Question 4
SELECT
    *
FROM products
WHERE is_active = 1 AND (category = 'Electronics' OR category = 'Furniture') AND NOT brand = 'Walton';
