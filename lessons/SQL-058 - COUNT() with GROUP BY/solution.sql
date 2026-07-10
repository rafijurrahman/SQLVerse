-- ============================================================
-- SQL Master
-- Lesson: SQL-058 — COUNT() with GROUP BY
-- ============================================================

-- Question 1
SELECT
    order_id,
    COUNT(*)
FROM order_items
GROUP BY order_id;

-- Question 2
SELECT
    store,
    COUNT(DISTINCT product_name)
FROM order_items
GROUP BY store;

-- Question 3
SELECT
    store,
    COUNT(*) AS "Total Line Items"
FROM order_items
GROUP BY store
ORDER BY COUNT(*) DESC;

-- Question 4
SELECT
    store,
    category,
    COUNT(*)
FROM order_items
GROUP BY store, category
HAVING COUNT(*) > 1;
