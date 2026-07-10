-- ============================================================
-- SQL Master
-- Lesson: SQL-145 — LAG()
-- ============================================================

-- Question 1
SELECT
    sale_date,
    product,
    revenue,
    LAG(revenue) OVER (ORDER BY sale_date) AS prev_revenue
FROM sales;

-- Question 2
SELECT
    sale_date,
    product,
    revenue,
    (revenue - LAG(revenue, 1, 0) OVER (ORDER BY sale_date)) AS revenue_change
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
    LAG(monthly_rev) OVER (ORDER BY `month`) AS prev_month_rev
FROM monthly;

-- Question 4
SELECT
    region,
    sale_date,
    revenue,
    LAG(revenue) OVER (PARTITION BY region ORDER BY sale_date) AS prev_region_revenue,
    (revenue - LAG(revenue) OVER (PARTITION BY region ORDER BY sale_date)) AS region_revenue_change
FROM sales;
