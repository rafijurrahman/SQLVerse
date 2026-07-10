-- ============================================================
-- SQL Master
-- Lesson: SQL-W008 — Window Function Execution Order
-- ============================================================

-- Question 1
SELECT
    product,
    revenue,
    SUM(revenue) OVER () AS total_revenue
FROM sales;

-- Question 2
SELECT
    product,
    category,
    revenue,
    SUM(revenue) OVER () AS electronics_total
FROM sales
WHERE category = 'Electronics';

-- Question 3
SELECT
    region,
    sale_date,
    product,
    revenue,
    SUM(revenue) OVER (PARTITION BY region ORDER BY sale_date) AS regional_running_total
FROM sales;

-- Question 4
SELECT
    product,
    region,
    sale_date,
    revenue,
    ROW_NUMBER() OVER (ORDER BY revenue DESC) AS row_num,
    RANK() OVER (ORDER BY revenue DESC) AS rnk,
    SUM(revenue) OVER (PARTITION BY region ORDER BY sale_date) AS running_total,
    AVG(revenue) OVER (PARTITION BY region ORDER BY sale_date) AS running_avg,
    LAG(revenue) OVER (PARTITION BY region ORDER BY sale_date) AS prev_sale_revenue
FROM sales;
