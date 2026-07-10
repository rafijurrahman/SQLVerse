-- ============================================================
-- SQL Master
-- Lesson: SQL-064 — GROUP BY with ORDER BY
-- ============================================================

-- Question 1
SELECT
    category,
    SUM(quantity * unit_price) AS "Total Revenue"
FROM order_items
GROUP BY category
ORDER BY SUM(quantity * unit_price) DESC;

-- Question 2
SELECT
    store,
    category,
    COUNT(*)
FROM order_items
GROUP BY store, category
ORDER BY store ASC, COUNT(*) DESC;

-- Question 3
SELECT
    store,
    SUM(quantity * unit_price) AS "Total Revenue",
    COUNT(*) AS "Item Count"
FROM order_items
GROUP BY store
ORDER BY SUM(quantity * unit_price) DESC, COUNT(*) DESC;

-- Question 4
-- Version 1: Alphabetical
SELECT
    category,
    SUM(quantity * unit_price) AS "Total Revenue"
FROM order_items
GROUP BY category
ORDER BY category ASC;

-- Version 2: Revenue Descending
SELECT
    category,
    SUM(quantity * unit_price) AS "Total Revenue"
FROM order_items
GROUP BY category
ORDER BY SUM(quantity * unit_price) DESC;
