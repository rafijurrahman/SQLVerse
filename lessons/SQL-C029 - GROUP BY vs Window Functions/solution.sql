-- ============================================================
-- SQL Master
-- Lesson: SQL-C029 — GROUP BY vs Window Functions
-- ============================================================

-- Question 1
-- A:
GROUP BY 
SELECT
    COUNT(*)
FROM ( SELECT region, SUM(revenue) FROM sales GROUP BY region ) AS group_by_count;

-- B: Window
SELECT
    COUNT(*)
FROM ( SELECT region, revenue, SUM(revenue) OVER (PARTITION BY region) FROM sales ) AS window_count;

-- Question 2
WITH monthly_sales AS (
    SELECT
        DATE_FORMAT(sale_date, '%Y-%m') AS month,
        SUM(revenue) AS total_revenue
    FROM sales
    GROUP BY DATE_FORMAT(sale_date, '%Y-%m')
)
SELECT
    month,
    total_revenue,
    SUM(total_revenue) OVER (ORDER BY month) AS running_total
FROM monthly_sales;

-- Question 3
SELECT
    product,
    revenue,
    category,
    SUM(revenue) OVER (PARTITION BY category) AS cat_total
FROM sales;

-- Question 4
--
GROUP BY collapses rows AND is ideal for summaries:
SELECT
    category,
    SUM(revenue) AS total_revenue
FROM sales
GROUP BY category;

-- Window functions retain row-level detail alongside aggregates:
SELECT
    product,
    category,
    revenue,
    SUM(revenue) OVER (PARTITION BY category) AS category_total
FROM sales;
