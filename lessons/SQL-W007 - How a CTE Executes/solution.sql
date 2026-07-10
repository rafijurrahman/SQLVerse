-- ============================================================
-- SQL Master
-- Lesson: SQL-W007 — How a CTE Executes
-- ============================================================

-- Question 1
WITH cte AS (
    SELECT
        region,
        SUM(revenue) AS total_revenue
    FROM sales
    GROUP BY region
)
SELECT
    *
FROM cte
WHERE total_revenue > 10000;

-- Question 2
WITH cte1 AS (
    SELECT
        region,
        SUM(revenue) AS total_revenue
    FROM sales
    GROUP BY region
),
cte2 AS (
    SELECT
        region,
        SUM(units_sold) AS total_units
    FROM sales
    GROUP BY region
)
SELECT
    cte1.region,
    cte1.total_revenue,
    cte2.total_units
FROM cte1
INNER JOIN cte2 ON cte1.region = cte2.region;

-- Question 3
WITH region_sales AS (
    SELECT
        region,
        SUM(revenue) AS total_revenue
    FROM sales
    GROUP BY region
),
above_avg_regions AS (
    SELECT
        region,
        total_revenue
    FROM region_sales
    WHERE total_revenue > ( SELECT AVG(total_revenue) FROM region_sales )
)
SELECT
    region,
    total_revenue,
    RANK() OVER (ORDER BY total_revenue DESC) AS sales_rank
FROM above_avg_regions;

-- Question 4
WITH RECURSIVE numbers AS (
    -- Anchor Member
    SELECT
        1 AS n
    UNION ALL -- Recursive Member
    SELECT
        n + 1
    FROM numbers
    WHERE n < 5
)
SELECT
    *
FROM numbers;
