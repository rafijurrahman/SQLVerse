-- ============================================================
-- SQL Master
-- Lesson: SQL-160 — Window Functions Common Mistakes
-- ============================================================

-- Question 1
SELECT
    *
FROM ( SELECT *, RANK() OVER (ORDER BY revenue DESC) AS rnk FROM sales ) AS sub
WHERE rnk <= 3;

-- Question 2
SELECT
    sale_id,
    sale_date,
    revenue,
    LAST_VALUE(revenue) OVER (ORDER BY sale_date) AS wrong_last_value,
    LAST_VALUE(revenue) OVER (ORDER BY sale_date ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS correct_last_value
FROM sales;

-- Question 3
SELECT
    *
FROM ( SELECT *, SUM(revenue) OVER () AS grand_total FROM sales ) AS sub
WHERE grand_total > 5000;

-- Question 4
WITH cte AS (
    SELECT
        category,
        SUM(revenue) AS total_revenue
    FROM sales
    GROUP BY category
)
SELECT
    category,
    total_revenue,
    RANK() OVER (ORDER BY total_revenue DESC) AS rnk
FROM cte;
