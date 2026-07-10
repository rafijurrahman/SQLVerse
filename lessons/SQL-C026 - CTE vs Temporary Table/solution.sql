-- ============================================================
-- SQL Master
-- Lesson: SQL-C026 — CTE vs Temporary Table
-- ============================================================

-- Question 1
-- CTE Approach
WITH cte AS (
    SELECT
        region,
        SUM(revenue) AS total
    FROM sales
    GROUP BY region
)
SELECT
    *
FROM cte
WHERE total > 3000;

-- Temporary Table Approach
CREATE TEMPORARY TABLE temp_reg AS
SELECT
    region,
    SUM(revenue) AS total
FROM sales
GROUP BY region;

SELECT
    *
FROM temp_reg
WHERE total > 3000;

-- Question 2
-- CTE for single-use operation
WITH single_use AS (
    SELECT
        product,
        SUM(units_sold) AS total_units
    FROM sales
    GROUP BY product
)
SELECT
    *
FROM single_use
WHERE total_units > 5;

-- A temp table is better for multi-step ETL OR WHEN the same subset is queried multiple times to avoid re-evaluating complex logic.;

-- Question 3
-- A: CTE for a one-time report
WITH monthly_summary AS (
    SELECT
        DATE_FORMAT(sale_date, '%Y-%m') AS month,
        SUM(revenue) AS monthly_revenue
    FROM sales
    GROUP BY DATE_FORMAT(sale_date, '%Y-%m')
)
SELECT
    *
FROM monthly_summary;

-- B: Temporary Table for multi-step ETL
CREATE TEMPORARY TABLE etl_sales AS
SELECT
    sale_id,
    revenue,
    cost,
    (revenue - cost) AS profit
FROM sales;

SELECT
    *
FROM etl_sales
WHERE profit > 1000;

-- Question 4
-- CTE Chain
WITH step1 AS (
    SELECT
        region,
        category,
        SUM(revenue) AS total_revenue
    FROM sales
    GROUP BY region, category
),
step2 AS (
    SELECT
        region,
        AVG(total_revenue) AS avg_revenue
    FROM step1
    GROUP BY region
),
step3 AS (
    SELECT
        s1.region,
        s1.category,
        s1.total_revenue
    FROM step1 s1
    JOIN step2 s2 ON s1.region = s2.region
    WHERE s1.total_revenue > s2.avg_revenue
)
SELECT
    *
FROM step3;

-- Temp Table equivalent
CREATE TEMPORARY TABLE temp_step1 AS
SELECT
    region,
    category,
    SUM(revenue) AS total_revenue
FROM sales
GROUP BY region, category;

CREATE TEMPORARY TABLE temp_step2 AS
SELECT
    region,
    AVG(total_revenue) AS avg_revenue
FROM temp_step1
GROUP BY region;

SELECT
    s1.region,
    s1.category,
    s1.total_revenue
FROM temp_step1 s1
JOIN temp_step2 s2 ON s1.region = s2.region
WHERE s1.total_revenue > s2.avg_revenue;

-- Pros of CTE: simple syntax, automatically cleaned up, no database writes.
-- Pros of Temp Table: indexes can be added, data persists across multiple queries, prevents redundant subquery runs.;
