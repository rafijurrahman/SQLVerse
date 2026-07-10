-- ============================================================
-- SQL Master
-- Lesson: SQL-R012 — Window Functions Revision
-- ============================================================

-- Question 1
SELECT
    product,
    revenue,
    ROW_NUMBER() OVER (ORDER BY revenue DESC) AS row_num,
    RANK() OVER (ORDER BY revenue DESC) AS rnk,
    DENSE_RANK() OVER (ORDER BY revenue DESC) AS dense_rnk,
    NTILE(4) OVER (ORDER BY revenue DESC) AS quartile
FROM sales;

-- Question 2
SELECT
    sale_date,
    product,
    revenue,
    LAG(revenue) OVER (ORDER BY sale_date) AS prev_rev,
    LEAD(revenue) OVER (ORDER BY sale_date) AS next_rev,
    revenue - LAG(revenue) OVER (ORDER BY sale_date) AS change_amount
FROM sales;

-- Question 3
SELECT
    product,
    region,
    category,
    revenue,
    SUM(revenue) OVER (PARTITION BY region ORDER BY sale_date) AS running_total,
    AVG(revenue) OVER (ORDER BY sale_date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS moving_avg_3,
    ROUND(revenue / SUM(revenue) OVER (PARTITION BY category) * 100, 2) AS pct_of_category,
    RANK() OVER (PARTITION BY region ORDER BY revenue DESC) AS rank_in_region
FROM sales;

-- Question 4
WITH monthly_rev AS (
    SELECT
        DATE_FORMAT(sale_date, '%Y-%m') AS month,
        SUM(revenue) AS total_revenue
    FROM sales
    GROUP BY DATE_FORMAT(sale_date, '%Y-%m')
),
monthly_metrics AS (
    SELECT
        month,
        total_revenue,
        SUM(total_revenue) OVER (ORDER BY month) AS running_total,
        LAG(total_revenue) OVER (ORDER BY month) AS prev_month_revenue,
        RANK() OVER (ORDER BY total_revenue DESC) AS sales_rank
    FROM monthly_rev
)
SELECT
    month,
    total_revenue,
    running_total,
    sales_rank,
    ROUND((total_revenue - prev_month_revenue) / prev_month_revenue * 100, 2) AS mom_growth_pct
FROM monthly_metrics;
