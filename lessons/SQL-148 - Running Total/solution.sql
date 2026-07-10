-- ============================================================
-- SQL Master
-- Lesson: SQL-148 — Running Total
-- ============================================================

-- Question 1
SELECT
    sale_date,
    product,
    revenue,
    SUM(revenue) OVER (ORDER BY sale_date) AS running_total
FROM sales;

-- Question 2
SELECT
    region,
    sale_date,
    revenue,
    SUM(revenue) OVER (PARTITION BY region ORDER BY sale_date) AS regional_running_total
FROM sales;

-- Question 3
WITH monthly AS (
    SELECT
        MONTH(sale_date) AS `month`,
        SUM(revenue) AS monthly_rev
    FROM sales
    GROUP BY MONTH(sale_date)
)
SELECT
    `month`,
    monthly_rev,
    SUM(monthly_rev) OVER (ORDER BY `month`) AS cumulative_revenue
FROM monthly;

-- Question 4
SELECT
    sale_date,
    product,
    revenue,
    SUM(revenue) OVER (ORDER BY sale_date) AS running_total,
    CASE
           WHEN SUM(revenue) OVER (ORDER BY sale_date) > 10000 THEN 'OVER 10K'
           ELSE 'Under 10K'
       END AS milestone
FROM sales;
