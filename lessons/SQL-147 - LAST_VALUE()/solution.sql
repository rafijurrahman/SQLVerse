-- ============================================================
-- SQL Master
-- Lesson: SQL-147 — LAST_VALUE()
-- ============================================================

-- Question 1
SELECT
    sale_date,
    product,
    revenue,
    LAST_VALUE(revenue) OVER (ORDER BY sale_date ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS last_revenue
FROM sales;

-- Question 2
SELECT
    region,
    sale_date,
    product,
    revenue,
    LAST_VALUE(revenue) OVER (PARTITION BY region ORDER BY sale_date ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS last_regional_revenue
FROM sales;

-- Question 3
SELECT
    sale_date,
    product,
    revenue,
    LAST_VALUE(revenue) OVER (ORDER BY sale_date ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS `Latest Revenue`
FROM sales;

-- Question 4
SELECT
    region,
    sale_id,
    product,
    revenue,
    (LAST_VALUE(revenue) OVER (PARTITION BY region ORDER BY revenue ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) -
        FIRST_VALUE(revenue) OVER (PARTITION BY region ORDER BY revenue)) AS `Revenue Spread`
FROM sales;
