-- ============================================================
-- SQL Master
-- Lesson: SQL-025 — ABS()
-- ============================================================

-- Question 1
SELECT
    product_name,
    ABS(unit_price - cost_price) AS "Profit Per Unit"
FROM order_items;

-- Question 2
SELECT
    product_name,
    ABS((unit_price - cost_price) * quantity) AS "Total Profit"
FROM order_items
ORDER BY ABS((unit_price - cost_price) * quantity) DESC;

-- Question 3
SELECT
    *
FROM order_items
WHERE ABS(unit_price - cost_price) < 100;

-- Question 4
SELECT
    product_name,
    unit_price,
    cost_price,
    ROUND(ABS((unit_price - cost_price) / unit_price * 100), 2) AS "Profit Margin %"
FROM order_items
ORDER BY ROUND(ABS((unit_price - cost_price) / unit_price * 100), 2) DESC;
