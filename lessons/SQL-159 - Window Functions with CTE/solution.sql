-- ============================================================
-- SQL Master
-- Lesson: SQL-159 — Window Functions with CTE
-- ============================================================

-- Question 1
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
    ROW_NUMBER() OVER (ORDER BY total DESC) AS RANK
FROM store_rev;

-- Question 2
WITH monthly AS (
    SELECT
        MONTH(sale_date) AS month,
        SUM(revenue) AS monthly_rev
    FROM sales
    GROUP BY MONTH(sale_date)
)
SELECT
    month,
    monthly_rev,
    SUM(monthly_rev) OVER (ORDER BY month) AS running_total
FROM monthly;

-- Question 3
WITH cat_rev AS (
    SELECT
        category,
        SUM(revenue) AS total_revenue
    FROM sales
    GROUP BY category
),
cat_rank AS (
    SELECT
        category,
        total_revenue,
        RANK() OVER (ORDER BY total_revenue DESC) AS rnk
    FROM cat_rev
)
SELECT
    category,
    total_revenue,
    rnk
FROM cat_rank
WHERE rnk <= 2;

-- Question 4
WITH sales_profit AS (
    SELECT
        region,
        revenue - cost AS profit
    FROM sales
),
region_profit AS (
    SELECT
        region,
        SUM(profit) AS total_profit
    FROM sales_profit
    GROUP BY region
),
ranked_regions AS (
    SELECT
        region,
        total_profit,
        RANK() OVER (ORDER BY total_profit DESC) AS rnk,
        SUM(total_profit) OVER (ORDER BY total_profit DESC) AS cumulative_profit
    FROM region_profit
)
SELECT
    region,
    total_profit,
    rnk,
    cumulative_profit
FROM ranked_regions;
