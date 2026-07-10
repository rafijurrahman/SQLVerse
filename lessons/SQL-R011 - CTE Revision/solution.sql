-- ============================================================
-- SQL Master
-- Lesson: SQL-R011 — CTE Revision
-- ============================================================

-- Question 1
-- A: Simple CTE
WITH region_rev AS (
    SELECT
        region,
        SUM(revenue) AS total_revenue
    FROM sales
    GROUP BY region
)
SELECT
    *
FROM region_rev;

-- B: Filtered CTE
WITH avg_sales AS (
    SELECT
        AVG(revenue) AS avg_rev
    FROM sales
)
SELECT
    *
FROM sales, avg_sales
WHERE revenue > avg_rev;

-- C: Multiple CTEs
WITH region_rev AS (
    SELECT
        region,
        SUM(revenue) AS total_revenue
    FROM sales
    GROUP BY region
),
category_rev AS (
    SELECT
        category,
        SUM(revenue) AS total_revenue
    FROM sales
    GROUP BY category
)
SELECT
    *
FROM region_rev
CROSS JOIN category_rev;

-- Question 2
WITH store_rev AS (
    SELECT
        store,
        SUM(revenue) AS total
    FROM sales
    GROUP BY store
)
SELECT
    s1.store,
    s1.total,
    s2.store AS comparison_store,
    s2.total AS comparison_total
FROM store_rev s1
CROSS JOIN store_rev s2
WHERE s1.store != s2.store AND s1.total > s2.total;

-- Question 3
WITH region_summary AS (
    SELECT
        region,
        SUM(revenue) AS total_revenue,
        SUM(revenue - cost) AS total_profit
    FROM sales
    GROUP BY region
),
category_summary AS (
    SELECT
        category,
        SUM(revenue) AS total_revenue
    FROM sales
    GROUP BY category
)
SELECT
    'Region' AS report_type,
    region AS label,
    total_revenue,
    total_profit
FROM region_summary
UNION ALL 
SELECT
    'Category' AS report_type,
    category AS label,
    total_revenue,
    NULL
FROM category_summary;

-- Question 4
WITH store_ranked AS (
    SELECT
        store,
        region,
        SUM(revenue) AS total,
        RANK() OVER (PARTITION BY region ORDER BY SUM(revenue) DESC) AS `RANK`
    FROM sales
    GROUP BY store, region
)
SELECT
    *
FROM store_ranked
WHERE `RANK` = 1;
