-- ============================================================
-- SQL Master
-- Lesson: SQL-138 — PARTITION BY
-- ============================================================

-- Question 1
SELECT
    region,
    sale_id,
    revenue,
    SUM(revenue) OVER (PARTITION BY region) AS region_total
FROM sales;

-- Question 2
SELECT
    category,
    sale_id,
    revenue,
    AVG(revenue) OVER (PARTITION BY category) AS category_avg
FROM sales;

-- Question 3
SELECT
    region,
    product,
    revenue,
    SUM(revenue) OVER (PARTITION BY region) AS region_total,
    SUM(revenue) OVER () AS grand_total
FROM sales;

-- Question 4
SELECT
    region,
    product,
    revenue,
    ROUND(revenue / SUM(revenue) OVER (PARTITION BY region) * 100, 2) AS `Region Share %`
FROM sales
ORDER BY region, revenue DESC;
