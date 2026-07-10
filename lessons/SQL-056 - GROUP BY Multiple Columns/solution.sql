-- ============================================================
-- SQL Master
-- Lesson: SQL-056 — GROUP BY Multiple Columns
-- ============================================================

-- Question 1
SELECT
    store,
    category,
    COUNT(*)
FROM order_items
GROUP BY store, category;

-- Question 2
SELECT
    store,
    category,
    SUM(quantity * unit_price) AS "Total Revenue"
FROM order_items
GROUP BY store, category
ORDER BY store ASC, SUM(quantity * unit_price) DESC;

-- Question 3
SELECT
    store,
    category,
    SUM(quantity) AS "Total Quantity",
    SUM(quantity * unit_price) AS "Total Revenue"
FROM order_items
GROUP BY store, category
ORDER BY store ASC, SUM(quantity * unit_price) DESC;

-- Question 4
SELECT
    store,
    category,
    SUM(quantity * unit_price) AS "Total Revenue",
    SUM(quantity * cost_price) AS "Total Cost",
    SUM(quantity * (unit_price - cost_price)) AS "Gross Profit"
FROM order_items
GROUP BY store, category
HAVING SUM(quantity * (unit_price - cost_price)) > 2000;
