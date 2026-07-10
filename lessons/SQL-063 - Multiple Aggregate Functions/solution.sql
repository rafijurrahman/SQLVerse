-- ============================================================
-- SQL Master
-- Lesson: SQL-063 — Multiple Aggregate Functions
-- ============================================================

-- Question 1
SELECT
    category,
    COUNT(*),
    SUM(quantity),
    AVG(unit_price)
FROM order_items
GROUP BY category;

-- Question 2
SELECT
    store,
    COUNT(*) AS "Items",
    SUM(quantity) AS "Units Sold",
    SUM(quantity * unit_price) AS "Revenue",
    AVG(unit_price) AS "Avg Price"
FROM order_items
GROUP BY store;

-- Question 3
SELECT
    category,
    COUNT(*) AS "Item Count",
    SUM(quantity) AS "Total Quantity",
    SUM(quantity * unit_price) AS "Total Revenue",
    AVG(unit_price) AS "Average Price",
    MIN(unit_price) AS "Min Price",
    MAX(unit_price) AS "Max Price"
FROM order_items
GROUP BY category;

-- Question 4
SELECT
    store,
    COUNT(*),
    SUM(quantity * unit_price) AS "Total Revenue",
    AVG(quantity * unit_price) AS "Avg Revenue",
    MIN(unit_price) AS "Min Price",
    MAX(unit_price) AS "Max Price"
FROM order_items
GROUP BY store
HAVING SUM(quantity * unit_price) > 3000;
