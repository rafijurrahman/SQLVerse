-- ============================================================
-- SQL Master
-- Lesson: SQL-131 — Multiple CTEs
-- ============================================================

-- Question 1
WITH cte1 AS (
    SELECT
        region,
        SUM(revenue) AS total
    FROM sales
    GROUP BY region
),
cte2 AS (
    SELECT
        AVG(total) AS avg_regional
    FROM cte1
)
SELECT
    region,
    total
FROM cte1, cte2
WHERE total > avg_regional;

-- Question 2
WITH by_category AS (
    SELECT
        category,
        SUM(revenue) AS category_revenue
    FROM sales
    GROUP BY category
),
by_region AS (
    SELECT
        region,
        SUM(revenue) AS region_revenue
    FROM sales
    GROUP BY region
)
SELECT
    c.category,
    c.category_revenue,
    r.region,
    r.region_revenue
FROM by_category c
CROSS JOIN by_region r;

-- Question 3
WITH avg_rev AS (
    SELECT
        AVG(revenue) AS avg_val
    FROM sales
),
high_sales AS (
    SELECT
        COUNT(*) AS high_count,
        SUM(revenue) AS high_total
    FROM sales, avg_rev
    WHERE revenue >= avg_val
),
low_sales AS (
    SELECT
        COUNT(*) AS low_count,
        SUM(revenue) AS low_total
    FROM sales, avg_rev
    WHERE revenue < avg_val
)
SELECT
    h.high_count,
    h.high_total,
    l.low_count,
    l.low_total
FROM high_sales h
CROSS JOIN low_sales l;

-- Question 4
WITH monthly_rev AS (
    SELECT
        MONTH(sale_date) AS sale_month,
        SUM(revenue) AS monthly_revenue
    FROM sales
    GROUP BY MONTH(sale_date)
),
running_total AS (
    SELECT
        sale_month,
        monthly_revenue,
        SUM(monthly_revenue) OVER (ORDER BY sale_month) AS cumulative_revenue
    FROM monthly_rev
),
growth_cte AS (
    SELECT
        sale_month,
        monthly_revenue,
        cumulative_revenue,
        LAG(monthly_revenue) OVER (ORDER BY sale_month) AS prev_month_revenue
    FROM running_total
)
SELECT
    sale_month,
    monthly_revenue,
    cumulative_revenue,
    (monthly_revenue - prev_month_revenue) AS mom_growth
FROM growth_cte;
