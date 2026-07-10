-- ============================================================
-- SQL Master
-- Lesson: SQL-018 — SUM()
-- ============================================================

-- Question 1
SELECT
    SUM(quantity * unit_price)
FROM order_items;

-- Question 2
SELECT
    category,
    SUM(quantity * unit_price)
FROM order_items
GROUP BY category;

-- Question 3
SELECT
    SUM(quantity * unit_price) AS "Total Revenue",
    SUM(quantity * cost_price) AS "Total Cost"
FROM order_items;

-- Question 4
SELECT
    order_id,
    SUM(quantity * unit_price)
FROM order_items
GROUP BY order_id
HAVING SUM(quantity * unit_price) > 2000;
