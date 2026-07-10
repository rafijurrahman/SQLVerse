-- ============================================================
-- SQL Master
-- Lesson: SQL-024 — FLOOR()
-- ============================================================

-- Question 1
SELECT
    FLOOR(price)
FROM products;

-- Question 2
SELECT
    FLOOR(price * tax_pct / 100) AS "Floor Tax Amount"
FROM products;

-- Question 3
SELECT
    product_name,
    price,
    FLOOR(price / 100) AS "Hundred Units"
FROM products;

-- Question 4
SELECT
    product_name,
    price,
    tax_pct,
    FLOOR(price + (price * tax_pct / 100)) AS "Price After Tax (Floored)"
FROM products
ORDER BY FLOOR(price + (price * tax_pct / 100)) DESC;
