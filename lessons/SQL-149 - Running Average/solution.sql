-- ============================================================
-- SQL Master
-- Lesson: SQL-149 — Running Average
-- ============================================================

-- Question 1
SELECT
    sale_date,
    product,
    revenue,
    AVG(revenue) OVER (ORDER BY sale_date) AS running_avg
FROM sales;

-- Question 2
SELECT
    category,
    sale_date,
    revenue,
    AVG(revenue) OVER (PARTITION BY category ORDER BY sale_date) AS category_running_avg
FROM sales;

-- Question 3
SELECT
    sale_date,
    product,
    revenue,
    AVG(revenue) OVER (ORDER BY sale_date) AS `Running Avg`,
    CASE
           WHEN revenue > AVG(revenue) OVER (ORDER BY sale_date) THEN 'Above Avg'
           ELSE 'Below Avg'
       END AS `Status`
FROM sales;

-- Question 4
SELECT
    region,
    sale_date,
    revenue,
    AVG(revenue) OVER (PARTITION BY region ORDER BY sale_date) AS regional_running_avg,
    CASE
           WHEN revenue > AVG(revenue) OVER (PARTITION BY region ORDER BY sale_date) THEN 'Above Avg'
           ELSE 'Below Avg'
       END AS flag
FROM sales;
