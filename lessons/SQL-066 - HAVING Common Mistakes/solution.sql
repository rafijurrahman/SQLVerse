-- ============================================================
-- SQL Master
-- Lesson: SQL-066 — HAVING Common Mistakes
-- ============================================================

-- Question 1
SELECT
    category,
    COUNT(*)
FROM order_items
GROUP BY category
HAVING COUNT(*) > 3;

-- Question 2
SELECT
    store,
    SUM(quantity * unit_price) AS "Total Revenue"
FROM order_items
GROUP BY store
HAVING SUM(quantity * unit_price) > 5000;

-- Question 3
SELECT
    category,
    AVG(unit_price)
FROM order_items
GROUP BY category
HAVING AVG(unit_price) > 500;

-- Question 4
SELECT
    category,
    SUM(quantity * unit_price) AS "Total Revenue"
FROM order_items
WHERE store IN ('Dhaka Store', 'CTG Store')
GROUP BY category
HAVING SUM(quantity * unit_price) > 3000;
