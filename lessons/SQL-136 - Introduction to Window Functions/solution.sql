-- ============================================================
-- SQL Master
-- Lesson: SQL-136 — Introduction to Window Functions
-- ============================================================

-- Question 1
SELECT
    sale_id,
    product,
    revenue,
    SUM(revenue) OVER () AS grand_total
FROM sales;

-- Question 2
SELECT
    sale_id,
    product,
    revenue,
    (revenue / SUM(revenue) OVER () * 100) AS pct_of_total
FROM sales;

-- Question 3
SELECT
    sale_id,
    region,
    product,
    revenue,
    SUM(revenue) OVER () AS `Total Company Revenue`
FROM sales;

-- Question 4
-- Query A:
GROUP BY 
SELECT
    category,
    SUM(revenue) AS total_revenue
FROM sales
GROUP BY category;

-- Query B: Window Function
SELECT
    category,
    revenue,
    SUM(revenue) OVER (PARTITION BY category) AS category_total_revenue
FROM sales;
