-- ============================================================
-- SQL Master
-- Lesson: SQL-140 — ROW_NUMBER()
-- ============================================================

-- Question 1
SELECT
    sale_id,
    product,
    revenue,
    ROW_NUMBER() OVER (ORDER BY revenue DESC) AS row_num
FROM sales;

-- Question 2
SELECT
    region,
    sale_id,
    product,
    revenue,
    ROW_NUMBER() OVER (PARTITION BY region ORDER BY revenue DESC) AS regional_rank
FROM sales;

-- Question 3
SELECT
    sale_id,
    product,
    sale_date,
    ROW_NUMBER() OVER (ORDER BY sale_date) AS row_num
FROM sales;

-- Question 4
SELECT
    sale_id,
    sale_date,
    region,
    store,
    category,
    product,
    revenue,
    units_sold,
    cost
FROM ( SELECT *, ROW_NUMBER() OVER (PARTITION BY region ORDER BY revenue DESC) AS rn FROM sales ) AS ranked
WHERE rn = 1;
