-- ============================================================
-- SQL Master
-- Lesson: SQL-065 — GROUP BY Common Mistakes
-- ============================================================

-- Question 1
SELECT
    category,
    SUM(quantity * unit_price)
FROM order_items
GROUP BY category;

-- Question 2
SELECT
    store,
    category,
    SUM(quantity * unit_price)
FROM order_items
GROUP BY store, category;

-- Question 3
SELECT
    category,
    store,
    SUM(quantity * unit_price) AS "Total Revenue"
FROM order_items
GROUP BY category, store;

-- Question 4
SELECT
    store,
    category,
    SUM(quantity * unit_price) AS total_rev
FROM order_items
GROUP BY store, category
HAVING SUM(quantity * unit_price) > 2000;
