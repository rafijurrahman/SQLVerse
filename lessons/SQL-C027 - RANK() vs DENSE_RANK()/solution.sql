-- ============================================================
-- SQL Master
-- Lesson: SQL-C027 — RANK() vs DENSE_RANK()
-- ============================================================

-- Question 1
WITH cat_totals AS (
    SELECT
        category,
        SUM(revenue) AS total
    FROM sales
    GROUP BY category
)
SELECT
    category,
    total,
    RANK() OVER (ORDER BY total DESC) AS rnk,
    DENSE_RANK() OVER (ORDER BY total DESC) AS dense_rnk
FROM cat_totals;

-- Question 2
SELECT
    product,
    revenue,
    RANK() OVER (ORDER BY revenue DESC) AS rnk,
    DENSE_RANK() OVER (ORDER BY revenue DESC) AS dense_rnk
FROM ( SELECT product, revenue FROM sales UNION ALL SELECT 'Tie Product' AS product, 2500.00 AS revenue ) AS tied_sales;

-- Question 3
WITH store_rev AS (
    SELECT
        store,
        SUM(revenue) AS total
    FROM sales
    GROUP BY store
)
SELECT
    store,
    total,
    DENSE_RANK() OVER (ORDER BY total DESC) AS "Position"
FROM store_rev;

-- Question 4
SELECT
    product,
    revenue,
    ROW_NUMBER() OVER (ORDER BY revenue DESC) AS row_num,
    RANK() OVER (ORDER BY revenue DESC) AS rnk,
    DENSE_RANK() OVER (ORDER BY revenue DESC) AS dense_rnk
FROM sales;
