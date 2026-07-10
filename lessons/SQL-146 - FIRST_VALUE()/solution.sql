-- ============================================================
-- SQL Master
-- Lesson: SQL-146 — FIRST_VALUE()
-- ============================================================

-- Question 1
SELECT
    sale_date,
    product,
    revenue,
    FIRST_VALUE(revenue) OVER (ORDER BY sale_date) AS first_sale_revenue
FROM sales;

-- Question 2
SELECT
    region,
    sale_date,
    product,
    revenue,
    FIRST_VALUE(revenue) OVER (PARTITION BY region ORDER BY sale_date) AS first_regional_revenue
FROM sales;

-- Question 3
SELECT
    sale_date,
    product,
    revenue,
    FIRST_VALUE(revenue) OVER (ORDER BY sale_date) AS `Baseline Revenue`,
    (revenue - FIRST_VALUE(revenue) OVER (ORDER BY sale_date)) AS `Change FROM First`
FROM sales;

-- Question 4
SELECT
    category,
    sale_date,
    product,
    FIRST_VALUE(product) OVER (PARTITION BY category ORDER BY sale_date) AS first_product
FROM sales;
