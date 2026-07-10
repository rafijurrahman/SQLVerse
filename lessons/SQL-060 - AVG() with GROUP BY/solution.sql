-- ============================================================
-- SQL Master
-- Lesson: SQL-060 — AVG() with GROUP BY
-- ============================================================

-- Question 1
SELECT
    category,
    AVG(unit_price)
FROM order_items
GROUP BY category;

-- Question 2
SELECT
    order_id,
    AVG(quantity)
FROM order_items
GROUP BY order_id;

-- Question 3
SELECT
    store,
    AVG(unit_price) AS "Avg Unit Price"
FROM order_items
GROUP BY store
ORDER BY AVG(unit_price) DESC;

-- Question 4
SELECT
    store,
    ROUND(AVG(quantity * unit_price), 2) AS "Avg Item Revenue"
FROM order_items
GROUP BY store
HAVING AVG(quantity * unit_price) > 1000;
