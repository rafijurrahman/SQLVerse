-- ============================================================
-- SQL Master
-- Lesson: SQL-R002 — Numeric Functions Revision
-- ============================================================

-- Question 1
SELECT
    item_id,
    product_name,
    quantity,
    unit_price,
    cost_price,
    (quantity * unit_price) AS total_revenue,
    (quantity * cost_price) AS total_cost,
    (quantity * (unit_price - cost_price)) AS gross_profit
FROM order_items;

-- Question 2
SELECT
    category,
    COUNT(*) AS item_count,
    SUM(quantity * unit_price) AS total_revenue,
    AVG(unit_price) AS avg_price,
    MIN(unit_price) AS min_price,
    MAX(unit_price) AS max_price
FROM order_items
GROUP BY category;

-- Question 3
SELECT
    item_id,
    product_name,
    ROUND(quantity * unit_price * (1 - discount_pct / 100), 2) AS "Net Amount",
    ABS(unit_price - cost_price) AS "Profit Per Unit"
FROM order_items
ORDER BY ROUND(quantity * unit_price * (1 - discount_pct / 100), 2) DESC;

-- Question 4
SELECT
    category,
    ROUND(SUM(quantity * unit_price), 0) AS total_revenue
FROM order_items
GROUP BY category
HAVING SUM(quantity * unit_price) > 2000
ORDER BY total_revenue DESC;
