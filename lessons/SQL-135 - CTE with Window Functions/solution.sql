-- ============================================================
-- SQL Master
-- Lesson: SQL-135 — CTE with Window Functions
-- ============================================================

-- Question 1
WITH region_rev AS (
    SELECT
        region,
        SUM(revenue) AS total
    FROM sales
    GROUP BY region
)
SELECT
    region,
    total,
    ROW_NUMBER() OVER (ORDER BY total DESC) AS `RANK`
FROM region_rev;

-- Question 2
WITH daily AS (
    SELECT
        sale_date,
        SUM(revenue) AS daily_rev
    FROM sales
    GROUP BY sale_date
)
SELECT
    sale_date,
    daily_rev,
    SUM(daily_rev) OVER (ORDER BY sale_date) AS running_total
FROM daily;

-- Question 3
WITH monthly_region AS (
    SELECT
        MONTH(sale_date) AS sale_month,
        region,
        SUM(revenue) AS revenue
    FROM sales
    GROUP BY MONTH(sale_date), region
)
SELECT
    sale_month,
    region,
    revenue,
    RANK() OVER (PARTITION BY sale_month ORDER BY revenue DESC) AS regional_rank
FROM monthly_region;

-- Question 4
WITH monthly AS (
    SELECT
        MONTH(sale_date) AS sale_month,
        SUM(revenue) AS monthly_revenue
    FROM sales
    GROUP BY MONTH(sale_date)
)
SELECT
    sale_month,
    monthly_revenue,
    ROW_NUMBER() OVER (ORDER BY sale_month) AS row_num,
    LAG(monthly_revenue) OVER (ORDER BY sale_month) AS prev_month_revenue,
    SUM(monthly_revenue) OVER (ORDER BY sale_month) AS running_total
FROM monthly;
