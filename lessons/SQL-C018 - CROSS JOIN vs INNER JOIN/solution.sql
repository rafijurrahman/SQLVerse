-- ============================================================
-- SQL Master
-- Lesson: SQL-C018 — CROSS JOIN vs INNER JOIN
-- ============================================================

-- Question 1
SELECT
    p.product_name,
    s.store_name
FROM products p
CROSS JOIN stores s;

SELECT
    p.product_name,
    s.store_name
FROM products p
INNER JOIN stores s ON p.product_id = s.store_id;

-- Question 2
--
CROSS JOIN (no ON condition)
SELECT
    p.product_name,
    s.store_name
FROM products p
CROSS JOIN stores s;

--
INNER JOIN WITH hypothetical ON condition
SELECT
    p.product_name,
    s.store_name
FROM products p
INNER JOIN stores s ON p.product_id = s.store_id;

-- Question 3
-- A: Complete product catalog for all stores
SELECT
    s.store_name,
    p.product_name
FROM stores s
CROSS JOIN products p;

-- B:
INNER JOIN would be used instead WHEN mapping products actually stocked IN stores via a junction table LIKE stock OR inventory.;

-- Question 4
SELECT
    COUNT(*)
FROM products p
CROSS JOIN stores s;

SELECT
    p.product_name,
    s.store_name,
    s.region
FROM products p
CROSS JOIN stores s
WHERE s.region = 'Central';
