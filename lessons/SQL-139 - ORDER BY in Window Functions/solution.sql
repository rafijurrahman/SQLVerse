-- ============================================================
-- SQL Master
-- Lesson: SQL-139 — ORDER BY in Window Functions
-- ============================================================

-- Question 1
SELECT
    sale_id,
    sale_date,
    revenue,
    SUM(revenue) OVER (ORDER BY sale_date) AS running_total
FROM sales;

-- Question 2
SELECT
    sale_id,
    sale_date,
    COUNT(*) OVER (ORDER BY sale_date) AS running_count
FROM sales;

-- Question 3
SELECT
    sale_date,
    product,
    revenue,
    SUM(revenue) OVER (ORDER BY sale_date) AS `Cumulative Revenue`
FROM sales;

-- Question 4
SELECT
    region,
    sale_date,
    revenue,
    SUM(revenue) OVER (PARTITION BY region ORDER BY sale_date) AS region_running_total
FROM sales;
