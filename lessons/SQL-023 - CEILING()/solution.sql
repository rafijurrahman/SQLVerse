-- ============================================================
-- SQL Master
-- Lesson: SQL-023 — CEILING()
-- ============================================================

-- Question 1
SELECT
    CEILING(price)
FROM products;

-- Question 2
SELECT
    CEILING(price * (1 - discount_pct/100)) AS "Ceiling Price"
FROM products;

-- Question 3
SELECT
    product_name,
    brand,
    price,
    CEILING(price) AS "Billable Price"
FROM products;

-- Question 4
SELECT
    product_name,
    price,
    discount_pct,
    CEILING(price * (1 - discount_pct/100)) AS "Ceiling Discounted Price"
FROM products
ORDER BY CEILING(price * (1 - discount_pct/100)) ASC;
