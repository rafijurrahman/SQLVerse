-- ============================================================
-- SQL Master
-- Lesson: SQL-C030 — Aggregate Functions vs Window Functions
-- ============================================================

-- Question 1
-- A: Regular aggregate
SELECT
    SUM(revenue) AS total_revenue
FROM sales;

-- B: Window aggregate
SELECT
    sale_id,
    product,
    revenue,
    SUM(revenue) OVER () AS total_revenue
FROM sales;

-- Question 2
-- Regular aggregate AVG returns one number
SELECT
    AVG(revenue) AS company_avg
FROM sales;

-- Window aggregate AVG returns category average IN each row
SELECT
    product,
    category,
    revenue,
    AVG(revenue) OVER (PARTITION BY category) AS category_avg
FROM sales;

-- Question 3
SELECT
    product,
    category,
    revenue,
    SUM(revenue) OVER (PARTITION BY category) AS cat_total,
    SUM(revenue) OVER () AS company_total
FROM sales;

-- Question 4
SELECT
    product,
    region,
    category,
    revenue,
    AVG(revenue) OVER () AS company_avg,
    AVG(revenue) OVER (PARTITION BY region) AS region_avg,
    AVG(revenue) OVER (PARTITION BY category) AS category_avg
FROM sales;
