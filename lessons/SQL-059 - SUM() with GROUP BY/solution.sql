-- ============================================================
-- SQL Master
-- Lesson: SQL-059 — SUM() with GROUP BY
-- ============================================================

-- Question 1
SELECT
    category,
    SUM(quantity)
FROM order_items
GROUP BY category;

-- Question 2
SELECT
    store,
    SUM(quantity * unit_price)
FROM order_items
GROUP BY store;

-- Question 3
SELECT
    store,
    SUM(quantity * unit_price) AS "Total Revenue"
FROM order_items
GROUP BY store
ORDER BY SUM(quantity * unit_price) DESC;

-- Question 4
SELECT
    category,
    SUM(quantity * unit_price) AS "Total Revenue",
    SUM(quantity * cost_price) AS "Total Cost",
    SUM(quantity * (unit_price - cost_price)) AS "Total Profit"
FROM order_items
GROUP BY category
ORDER BY SUM(quantity * (unit_price - cost_price)) DESC;
