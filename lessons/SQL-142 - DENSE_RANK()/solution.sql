-- ============================================================
-- SQL Master
-- Lesson: SQL-142 — DENSE_RANK()
-- ============================================================

-- Question 1
SELECT
    sale_id,
    product,
    revenue,
    DENSE_RANK() OVER (ORDER BY revenue DESC) AS dense_rnk
FROM sales;

-- Question 2
SELECT
    sale_id,
    product,
    revenue,
    RANK() OVER (ORDER BY revenue DESC) AS rnk,
    DENSE_RANK() OVER (ORDER BY revenue DESC) AS dense_rnk
FROM sales;

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
    DENSE_RANK() OVER (ORDER BY total DESC) AS `RANK`
FROM store_rev;

-- Question 4
WITH cat_sum AS (
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
FROM cat_sum;
