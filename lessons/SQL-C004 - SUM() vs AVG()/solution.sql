-- ============================================================
-- SQL Master
-- Lesson: SQL-C004 — SUM() vs AVG()
-- ============================================================

-- Question 1
-- (A) SUM(quantity * unit_price) — total revenue
FROM all items.
SELECT
    SUM(quantity * unit_price) AS total_revenue
FROM order_items;

-- (B) AVG(quantity * unit_price) — average revenue per line item.
SELECT
    AVG(quantity * unit_price) AS avg_line_item_revenue
FROM order_items;

-- Question 2
SELECT
    category,
    SUM(unit_price) AS total_unit_price,
    AVG(unit_price) AS avg_unit_price
FROM order_items
GROUP BY category;

-- Question 3
SELECT
    category,
    SUM(quantity * unit_price) AS total_revenue,
    AVG(unit_price) AS avg_unit_price
FROM order_items
GROUP BY category
ORDER BY total_revenue DESC;

-- Question 4
SELECT
    category,
    SUM(quantity * unit_price) AS total_revenue,
    AVG(unit_price) AS avg_unit_price
FROM order_items
GROUP BY category
HAVING SUM(quantity * unit_price) > 5000 AND AVG(unit_price) > 500;
