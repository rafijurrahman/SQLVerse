-- ============================================================
-- SQL Master
-- Lesson: SQL-C009 — WHERE vs HAVING
-- ============================================================

-- Question 1
SELECT
    SUM(quantity * unit_price) AS total_revenue
FROM order_items
WHERE category = 'Electronics';

SELECT
    category,
    SUM(quantity * unit_price) AS total_revenue
FROM order_items
GROUP BY category
HAVING SUM(quantity * unit_price) > 5000;

-- Question 2
SELECT
    category,
    SUM(quantity * unit_price) AS total_revenue
FROM order_items
WHERE unit_price > 500
GROUP BY category;

SELECT
    category,
    SUM(quantity * unit_price) AS total_revenue
FROM order_items
GROUP BY category
HAVING SUM(quantity * unit_price) > 3000;

-- Question 3
SELECT
    SUM(quantity * unit_price) AS total_revenue
FROM order_items
WHERE category = 'Electronics';

SELECT
    category,
    SUM(quantity * unit_price) AS total_revenue
FROM order_items
GROUP BY category
HAVING SUM(quantity * unit_price) > 4000;

-- Question 4
SELECT
    category,
    SUM(quantity * unit_price) AS total_revenue
FROM order_items
WHERE store = 'Dhaka Store'
GROUP BY category
HAVING SUM(quantity * unit_price) > 3000;
