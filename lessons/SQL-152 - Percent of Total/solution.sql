-- ============================================================
-- SQL Master
-- Lesson: SQL-152 — Percent of Total
-- ============================================================

-- Question 1
SELECT
    sale_id,
    product,
    revenue,
    ROUND(revenue / SUM(revenue) OVER () * 100, 2) AS `Pct of Total`
FROM sales;

-- Question 2
SELECT
    region,
    product,
    revenue,
    ROUND(revenue / SUM(revenue) OVER (PARTITION BY region) * 100, 2) AS `Pct of Region`
FROM sales;

-- Question 3
SELECT
    category,
    product,
    revenue,
    ROUND(revenue / SUM(revenue) OVER (PARTITION BY category) * 100, 2) AS pct_of_category,
    ROUND(revenue / SUM(revenue) OVER () * 100, 2) AS pct_of_grand_total
FROM sales;

-- Question 4
SELECT
    product,
    category,
    region,
    revenue,
    ROUND(revenue / SUM(revenue) OVER (PARTITION BY category) * 100, 2) AS pct_of_category,
    ROUND(revenue / SUM(revenue) OVER (PARTITION BY region) * 100, 2) AS pct_of_region,
    ROUND(revenue / SUM(revenue) OVER () * 100, 2) AS pct_of_grand_total
FROM sales;
