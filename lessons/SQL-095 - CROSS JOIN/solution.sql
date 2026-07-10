-- ============================================================
-- SQL Master
-- Lesson: SQL-095 — CROSS JOIN
-- ============================================================

-- Question 1
SELECT
    p.product_name,
    s.store_name
FROM products p
CROSS JOIN stores s;

-- Question 2
SELECT
    s.store_name,
    p.product_name,
    p.price
FROM products p
CROSS JOIN stores s;

-- Question 3
SELECT
    s.store_name,
    p.product_name,
    p.price,
    s.region
FROM products p
CROSS JOIN stores s;

-- Question 4
SELECT
    s.store_name,
    p.product_name
FROM stores s
CROSS JOIN products p
WHERE p.category = 'Electronics';
