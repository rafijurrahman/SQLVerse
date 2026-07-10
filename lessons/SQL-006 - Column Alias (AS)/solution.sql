-- ============================================================
-- SQL Master
-- Lesson: SQL-006 — Column Alias (AS)
-- ============================================================

-- Question 1
SELECT
    product_name AS "Product",
    brand AS "Brand",
    price AS "Price"
FROM products;

-- Question 2
SELECT
    product_name,
    brand,
    (price - cost_price) AS "Profit"
FROM products;

-- Question 3
SELECT
    product_name AS "Item Name",
    price AS "Retail Price",
    cost_price AS "Cost",
    (price - cost_price) AS "Gross Profit"
FROM products;

-- Question 4
SELECT
    product_name AS "Product Name",
    category AS "Department",
    (price * 0.90) AS "Sale Price"
FROM products;
