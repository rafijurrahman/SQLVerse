-- ============================================================
-- SQL Master
-- Lesson: SQL-150 — Moving Average
-- ============================================================

-- Question 1
SELECT
    sale_date,
    product,
    revenue,
    AVG(revenue) OVER (ORDER BY sale_date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS moving_avg_3
FROM sales;

-- Question 2
SELECT
    sale_date,
    product,
    revenue,
    AVG(revenue) OVER (ORDER BY sale_date ROWS BETWEEN 4 PRECEDING AND CURRENT ROW) AS moving_avg_5
FROM sales;

-- Question 3
SELECT
    sale_date,
    revenue,
    ROUND(AVG(revenue) OVER (ORDER BY sale_date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW), 2) AS `3-Day Moving Avg`
FROM sales;

-- Question 4
SELECT
    sale_date,
    product,
    revenue,
    AVG(revenue) OVER (ORDER BY sale_date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS ma3,
    AVG(revenue) OVER (ORDER BY sale_date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS ma7
FROM sales;
