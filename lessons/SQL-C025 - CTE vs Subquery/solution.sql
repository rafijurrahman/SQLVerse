-- ============================================================
-- SQL Master
-- Lesson: SQL-C025 — CTE vs Subquery
-- ============================================================

-- Question 1
-- A: CTE
WITH avg_cte AS (
    SELECT
        AVG(revenue) AS avg_val
    FROM sales
)
SELECT
    s.*
FROM sales s, avg_cte
WHERE s.revenue > avg_cte.avg_val;

-- B: Subquery
SELECT
    *
FROM sales
WHERE revenue > ( SELECT AVG(revenue) FROM sales );

-- Question 2
-- A: CTE approach
WITH region_totals AS (
    SELECT
        region,
        SUM(revenue) AS total_rev
    FROM sales
    GROUP BY region
)
SELECT
    region,
    total_rev
FROM region_totals
WHERE total_rev = ( SELECT MAX(total_rev) FROM region_totals );

-- B: Subquery approach
SELECT
    region,
    SUM(revenue) AS total_rev
FROM sales
GROUP BY region
HAVING SUM(revenue) = ( SELECT MAX(total_rev) FROM ( SELECT SUM(revenue) AS total_rev FROM sales GROUP BY region ) AS sub );

-- Question 3
-- CTE Version (Readable)
WITH category_sales AS (
    SELECT
        category,
        SUM(revenue) AS total_revenue
    FROM sales
    GROUP BY category
),
average_sales AS (
    SELECT
        AVG(total_revenue) AS avg_revenue
    FROM category_sales
)
SELECT
    cs.category,
    cs.total_revenue
FROM category_sales cs, average_sales ASs
WHERE cs.total_revenue > ASs.avg_revenue;

-- Subquery Version (Less Readable)
SELECT
    sub.category,
    sub.total_revenue
FROM ( SELECT category, SUM(revenue) AS total_revenue FROM sales GROUP BY category ) AS sub
WHERE sub.total_revenue > ( SELECT AVG(total_revenue) FROM ( SELECT category, SUM(revenue) AS total_revenue FROM sales GROUP BY category ) AS sub_inner );

-- Question 4
WITH region_summary AS (
    SELECT
        region,
        SUM(revenue) AS total
    FROM sales
    GROUP BY region
)
SELECT
    r1.region AS region_1,
    r1.total AS total_1,
    r2.region AS region_2,
    r2.total AS total_2
FROM region_summary r1
INNER JOIN region_summary r2 ON r1.total > r2.total;
