-- ============================================================
-- SQL Master
-- Lesson: SQL-143 — NTILE()
-- ============================================================

-- Question 1
SELECT
    sale_id,
    product,
    revenue,
    NTILE(3) OVER (ORDER BY revenue) AS bucket
FROM sales;

-- Question 2
SELECT
    sale_id,
    product,
    revenue,
    CASE NTILE(3) OVER (ORDER BY revenue)
           WHEN 1 THEN 'Low'
           WHEN 2 THEN 'Medium'
           ELSE 'High'
       END AS bucket_label
FROM sales;

-- Question 3
SELECT
    sale_id,
    product,
    revenue,
    CASE NTILE(4) OVER (ORDER BY revenue DESC)
           WHEN 1 THEN 'Top 25%'
           WHEN 2 THEN 'Second 25%'
           WHEN 3 THEN 'Third 25%'
           ELSE 'Bottom 25%'
       END AS quartile_label
FROM sales;

-- Question 4
SELECT
    category,
    product,
    revenue,
    NTILE(2) OVER (PARTITION BY category ORDER BY revenue DESC) AS performance_tier
FROM sales;
