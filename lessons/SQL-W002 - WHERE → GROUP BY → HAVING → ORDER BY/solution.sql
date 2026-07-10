-- ============================================================
-- SQL Master
-- Lesson: SQL-W002 — WHERE → GROUP BY → HAVING → ORDER BY
-- ============================================================

-- Question 1
SELECT
    category,
    SUM(quantity * unit_price) AS total_revenue
FROM order_items
GROUP BY category;

-- Question 2
SELECT
    category,
    SUM(quantity * unit_price) AS revenue
FROM order_items
WHERE store = 'Dhaka Store'
GROUP BY category;

-- Question 3
SELECT
    category,
    SUM(quantity * unit_price) AS revenue
FROM order_items
WHERE store = 'Dhaka Store' OR store = 'CTG Store'
GROUP BY category
HAVING SUM(quantity * unit_price) > 2000
ORDER BY revenue DESC;

-- Question 4
SELECT
    category,
    SUM(quantity * unit_price) AS revenue
FROM order_items
WHERE category != 'Furniture'
GROUP BY category
HAVING SUM(quantity * unit_price) > 1000
ORDER BY revenue DESC;
