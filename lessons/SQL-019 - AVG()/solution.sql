-- ============================================================
-- SQL Master
-- Lesson: SQL-019 — AVG()
-- ============================================================

-- Question 1
SELECT
    AVG(unit_price)
FROM order_items;

-- Question 2
SELECT
    category,
    AVG(unit_price)
FROM order_items
GROUP BY category;

-- Question 3
SELECT
    category,
    AVG(quantity * unit_price)
FROM order_items
GROUP BY category;

-- Question 4
SELECT
    category,
    AVG(unit_price)
FROM order_items
GROUP BY category
HAVING AVG(unit_price) > 500;
