-- ============================================================
-- SQL Master
-- Lesson: SQL-055 — GROUP BY
-- ============================================================

-- Question 1
SELECT
    category,
    COUNT(*)
FROM order_items
GROUP BY category;

-- Question 2
SELECT
    category,
    SUM(quantity * unit_price) AS "Total Revenue"
FROM order_items
GROUP BY category;

-- Question 3
SELECT
    category,
    SUM(quantity) AS "Total Quantity",
    SUM(quantity * unit_price) AS "Total Revenue",
    SUM(quantity * cost_price) AS "Total Cost"
FROM order_items
GROUP BY category
ORDER BY SUM(quantity * unit_price) DESC;

-- Question 4
SELECT
    category,
    ROUND(SUM(quantity * (unit_price - cost_price)) / SUM(quantity * unit_price) * 100, 2) AS "Profit Margin %"
FROM order_items
GROUP BY category
ORDER BY ROUND(SUM(quantity * (unit_price - cost_price)) / SUM(quantity * unit_price) * 100, 2) DESC;
