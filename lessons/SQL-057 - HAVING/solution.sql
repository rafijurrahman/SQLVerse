-- ============================================================
-- SQL Master
-- Lesson: SQL-057 — HAVING
-- ============================================================

-- Question 1
SELECT
    category,
    SUM(quantity * unit_price) AS "Total Revenue"
FROM order_items
GROUP BY category
HAVING SUM(quantity * unit_price) > 5000;

-- Question 2
SELECT
    store,
    COUNT(*)
FROM order_items
GROUP BY store
HAVING COUNT(*) > 4;

-- Question 3
SELECT
    store,
    category,
    SUM(quantity * unit_price) AS "Total Revenue"
FROM order_items
GROUP BY store, category
HAVING SUM(quantity * unit_price) > 3000
ORDER BY SUM(quantity * unit_price) DESC;

-- Question 4
SELECT
    category,
    SUM(quantity) AS "Total Quantity",
    AVG(unit_price) AS "Average Price"
FROM order_items
GROUP BY category
HAVING SUM(quantity) > 5 AND AVG(unit_price) > 300;
