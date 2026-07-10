-- ============================================================
-- SQL Master
-- Lesson: SQL-144 — LEAD()
-- ============================================================

-- Question 1
SELECT
    sale_date,
    product,
    revenue,
    LEAD(revenue) OVER (ORDER BY sale_date) AS next_revenue
FROM sales;

-- Question 2
SELECT
    sale_date,
    product,
    revenue,
    (revenue - LEAD(revenue) OVER (ORDER BY sale_date)) AS revenue_change
FROM sales;

-- Question 3
SELECT
    sale_date,
    product,
    revenue,
    LEAD(revenue) OVER (ORDER BY sale_date) AS `Next Sale Revenue`,
    (revenue - LEAD(revenue) OVER (ORDER BY sale_date)) AS difference
FROM sales;

-- Question 4
SELECT
    region,
    sale_date,
    revenue,
    LEAD(revenue) OVER (PARTITION BY region ORDER BY sale_date) AS next_in_region
FROM sales
ORDER BY region, sale_date;
