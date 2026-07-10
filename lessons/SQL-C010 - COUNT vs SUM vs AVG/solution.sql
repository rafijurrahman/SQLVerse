-- ============================================================
-- SQL Master
-- Lesson: SQL-C010 — COUNT vs SUM vs AVG
-- ============================================================

-- Question 1
SELECT
    COUNT(*)
FROM order_items;

SELECT
    SUM(quantity)
FROM order_items;

SELECT
    AVG(unit_price)
FROM order_items;

-- Question 2
SELECT
    category,
    COUNT(*) AS count_items,
    SUM(quantity * unit_price) AS total_revenue,
    AVG(unit_price) AS average_price
FROM order_items
GROUP BY category;

-- Question 3
SELECT
    store,
    COUNT(DISTINCT order_id)
FROM order_items
GROUP BY store;

SELECT
    store,
    SUM(quantity * unit_price)
FROM order_items
GROUP BY store;

SELECT
    store,
    AVG(quantity * unit_price)
FROM order_items
GROUP BY store;

-- Question 4
SELECT
    store
FROM order_items
GROUP BY store
HAVING COUNT(*) > 3 AND AVG(unit_price) > 500 AND SUM(quantity * unit_price) > 5000;
