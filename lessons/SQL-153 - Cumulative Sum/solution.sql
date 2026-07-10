-- ============================================================
-- SQL Master
-- Lesson: SQL-153 — Cumulative Sum
-- ============================================================

-- Question 1
SELECT
    sale_date,
    product,
    revenue,
    SUM(revenue) OVER (ORDER BY sale_date) AS cumulative_sum
FROM sales;

-- Question 2
SELECT
    category,
    sale_date,
    product,
    revenue,
    SUM(revenue) OVER (PARTITION BY category ORDER BY sale_date) AS category_cumulative
FROM sales;

-- Question 3
SELECT
    sale_date,
    product,
    revenue,
    SUM(revenue) OVER (ORDER BY sale_date) AS cumulative,
    CASE
           WHEN SUM(revenue) OVER (ORDER BY sale_date) >= 20000 THEN '20K+'
           WHEN SUM(revenue) OVER (ORDER BY sale_date) >= 10000 THEN '10K+'
           WHEN SUM(revenue) OVER (ORDER BY sale_date) >= 5000 THEN '5K+'
           ELSE 'Under 5K'
       END AS milestone
FROM sales;

-- Question 4
SELECT
    sale_date,
    revenue,
    cost,
    (SUM(revenue) OVER (ORDER BY sale_date) - SUM(cost) OVER (ORDER BY sale_date)) AS cumulative_profit
FROM sales;
