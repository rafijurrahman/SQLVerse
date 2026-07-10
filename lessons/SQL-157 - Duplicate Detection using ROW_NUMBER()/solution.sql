-- ============================================================
-- SQL Master
-- Lesson: SQL-157 — Duplicate Detection using ROW_NUMBER()
-- ============================================================

-- Question 1
SELECT
    *
FROM ( SELECT *, ROW_NUMBER() OVER (PARTITION BY product, sale_date, revenue ORDER BY sale_id) AS rn FROM sales ) AS r
WHERE rn > 1;

-- Question 2
SELECT
    *
FROM ( SELECT *, ROW_NUMBER() OVER (PARTITION BY product, region ORDER BY sale_date) AS occurrence FROM sales ) AS r
WHERE occurrence > 1;

-- Question 3
SELECT
    *,
    CASE 
           WHEN ROW_NUMBER() OVER (PARTITION BY product, sale_date ORDER BY sale_id) > 1 THEN 'Duplicate'
           ELSE 'Original'
       END AS status
FROM sales;

-- Question 4
SELECT
    *
FROM ( SELECT *, ROW_NUMBER() OVER (PARTITION BY product, region ORDER BY sale_id) AS rn FROM sales ) AS r
WHERE rn = 1;
