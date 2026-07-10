-- ============================================================
-- SQL Master
-- Lesson: SQL-134 — CTE with Aggregate Functions
-- ============================================================

-- Question 1
WITH region_agg AS (
    SELECT
        region,
        SUM(revenue) AS total_rev,
        SUM(cost) AS total_cost
    FROM sales
    GROUP BY region
)
SELECT
    region,
    total_rev,
    total_cost,
    (total_rev - total_cost) AS profit
FROM region_agg;

-- Question 2
WITH cat_avg AS (
    SELECT
        category,
        AVG(revenue) AS avg_rev
    FROM sales
    GROUP BY category
)
SELECT
    category,
    avg_rev
FROM cat_avg
WHERE avg_rev = ( SELECT MAX(avg_rev) FROM cat_avg );

-- Question 3
WITH kpi_cte AS (
    SELECT
        COUNT(*) AS total_sales_count,
        SUM(revenue) AS total_revenue,
        SUM(cost) AS total_cost,
        SUM(revenue - cost) AS total_profit,
        AVG(revenue) AS avg_revenue_per_sale
    FROM sales
)
SELECT
    total_sales_count,
    total_revenue,
    total_cost,
    total_profit,
    avg_revenue_per_sale
FROM kpi_cte;

-- Question 4
WITH region_rev AS (
    SELECT
        'Region' AS aggregation_type,
        region AS dimension,
        SUM(revenue) AS total_revenue
    FROM sales
    GROUP BY region
),
category_rev AS (
    SELECT
        'Category' AS aggregation_type,
        category AS dimension,
        SUM(revenue) AS total_revenue
    FROM sales
    GROUP BY category
),
month_rev AS (
    SELECT
        'Month' AS aggregation_type,
        CAST(MONTH(sale_date) AS CHAR) AS dimension,
        SUM(revenue) AS total_revenue
    FROM sales
    GROUP BY MONTH(sale_date)
)
SELECT
    aggregation_type,
    dimension,
    total_revenue
FROM region_rev
UNION ALL 
SELECT
    aggregation_type,
    dimension,
    total_revenue
FROM category_rev
UNION ALL 
SELECT
    aggregation_type,
    dimension,
    total_revenue
FROM month_rev;
