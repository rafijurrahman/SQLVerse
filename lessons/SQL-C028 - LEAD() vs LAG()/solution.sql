-- ============================================================
-- SQL Master
-- Lesson: SQL-C028 — LEAD() vs LAG()
-- ============================================================

-- Question 1
SELECT
    sale_date,
    product,
    revenue,
    LAG(revenue) OVER (ORDER BY sale_date) AS prev_revenue,
    LEAD(revenue) OVER (ORDER BY sale_date) AS next_revenue
FROM sales;

-- Question 2
SELECT
    sale_date,
    product,
    revenue,
    ROUND((revenue - LAG(revenue) OVER (ORDER BY sale_date)) / LAG(revenue) OVER (ORDER BY sale_date) * 100, 2) AS growth_pct
FROM sales;

-- Question 3
SELECT
    sale_date,
    LAG(revenue) OVER (ORDER BY sale_date) AS "Previous",
    revenue AS "Current",
    LEAD(revenue) OVER (ORDER BY sale_date) AS "Next"
FROM sales;

-- Question 4
SELECT
    sale_date,
    product,
    revenue,
    LAG(revenue, 2) OVER (ORDER BY sale_date) AS two_periods_ago,
    LEAD(revenue, 2) OVER (ORDER BY sale_date) AS two_periods_ahead
FROM sales;
