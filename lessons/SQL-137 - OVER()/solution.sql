-- ============================================================
-- SQL Master
-- Lesson: SQL-137 — OVER()
-- ============================================================

-- Question 1
SELECT
    sale_id,
    revenue,
    SUM(revenue) OVER () AS total
FROM sales;

-- Question 2
SELECT
    product,
    revenue,
    ROUND(revenue / SUM(revenue) OVER () * 100, 2) AS `Pct Total`
FROM sales;

-- Question 3
SELECT
    sale_id,
    product,
    revenue,
    AVG(revenue) OVER () AS avg_revenue,
    MAX(revenue) OVER () AS max_revenue,
    MIN(revenue) OVER () AS min_revenue
FROM sales;

-- Question 4
SELECT
    sale_id,
    product,
    revenue,
    (revenue - AVG(revenue) OVER ()) AS deviation_from_avg
FROM sales
ORDER BY deviation_from_avg DESC;
