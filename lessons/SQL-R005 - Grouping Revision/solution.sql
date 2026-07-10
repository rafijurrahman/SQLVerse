-- ============================================================
-- SQL Master
-- Lesson: SQL-R005 — Grouping Revision
-- ============================================================

-- Question 1
SELECT
    category,
    COUNT(*) AS Items,
    SUM(quantity) AS Units,
    SUM(quantity * unit_price) AS Revenue
FROM order_items
GROUP BY category
ORDER BY Revenue DESC;

-- Question 2
SELECT
    store,
    SUM(quantity * unit_price) AS total_revenue,
    SUM(quantity * cost_price) AS total_cost,
    SUM(quantity * (unit_price - cost_price)) AS profit,
    ROUND(SUM(quantity * (unit_price - cost_price)) / SUM(quantity * unit_price) * 100, 2) AS profit_margin_pct
FROM order_items
GROUP BY store
ORDER BY profit DESC;

-- Question 3
SELECT
    store,
    SUM(quantity * unit_price) AS total_revenue
FROM order_items
GROUP BY store
ORDER BY total_revenue DESC
LIMIT 2;

-- Question 4
SELECT
    store,
    category,
    SUM(quantity * unit_price) AS total_revenue,
    AVG(unit_price) AS avg_unit_price
FROM order_items
WHERE unit_price > 100
GROUP BY store, category
HAVING SUM(quantity * unit_price) > 1500
ORDER BY total_revenue DESC;
