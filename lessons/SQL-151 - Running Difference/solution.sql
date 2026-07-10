-- ============================================================
-- SQL Master
-- Lesson: SQL-151 — Running Difference
-- ============================================================

-- Question 1
SELECT
    sale_date,
    product,
    revenue,
    (revenue - LAG(revenue) OVER (ORDER BY sale_date)) AS running_diff
FROM sales;

-- Question 2
SELECT
    sale_date,
    product,
    revenue,
    (revenue - AVG(revenue) OVER (ORDER BY sale_date)) AS diff_from_running_avg
FROM sales;

-- Question 3
SELECT
    sale_date,
    product,
    revenue,
    LAG(revenue) OVER (ORDER BY sale_date) AS Previous,
    (revenue - LAG(revenue) OVER (ORDER BY sale_date)) AS `Change`,
    CASE
           WHEN revenue > LAG(revenue) OVER (ORDER BY sale_date) THEN 'Up'
           ELSE 'Down'
       END AS Trend
FROM sales;

-- Question 4
SELECT
    sale_date,
    product,
    revenue,
    SUM(revenue - LAG(revenue, 1, revenue) OVER (ORDER BY sale_date)) OVER (ORDER BY sale_date) AS `Cumulative Change`
FROM sales;
