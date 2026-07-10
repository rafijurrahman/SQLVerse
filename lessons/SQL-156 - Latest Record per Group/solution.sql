-- ============================================================
-- SQL Master
-- Lesson: SQL-156 — Latest Record per Group
-- ============================================================

-- Question 1
SELECT
    *
FROM ( SELECT *, ROW_NUMBER() OVER (PARTITION BY region ORDER BY sale_date DESC) AS rn FROM sales ) AS r
WHERE rn = 1;

-- Question 2
SELECT
    product,
    sale_date,
    revenue
FROM ( SELECT product, sale_date, revenue, ROW_NUMBER() OVER (PARTITION BY product ORDER BY sale_date DESC) AS rn FROM sales ) AS r
WHERE rn = 1;

-- Question 3
SELECT
    product,
    sale_date AS latest_sale_date,
    revenue AS latest_revenue
FROM ( SELECT product, sale_date, revenue, ROW_NUMBER() OVER (PARTITION BY product ORDER BY sale_date DESC) AS rn FROM sales ) AS r
WHERE rn = 1;

-- Question 4
SELECT
    category,
    first_sale_date,
    first_revenue,
    latest_date,
    latest_revenue
FROM ( SELECT category, FIRST_VALUE(sale_date) OVER (PARTITION BY category ORDER BY sale_date ASC) AS first_sale_date, FIRST_VALUE(revenue) OVER (PARTITION BY category ORDER BY sale_date ASC) AS first_revenue, sale_date AS latest_date, revenue AS latest_revenue, ROW_NUMBER() OVER (PARTITION BY category ORDER BY sale_date DESC) AS rn FROM sales ) AS sub
WHERE rn = 1;
