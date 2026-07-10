-- ============================================================
-- SQL Master
-- Lesson: SQL-158 — Window Functions with GROUP BY
-- ============================================================

-- Question 1
SELECT
    category,
    SUM(revenue) AS cat_total,
    SUM(SUM(revenue)) OVER () AS grand_total
FROM sales
GROUP BY category;

-- Question 2
WITH reg_totals AS (
    SELECT
        region,
        SUM(revenue) AS total
    FROM sales
    GROUP BY region
)
SELECT
    region,
    total,
    RANK() OVER (ORDER BY total DESC) AS RANK
FROM reg_totals;

-- Question 3
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
    SUM(monthly_rev) OVER (ORDER BY month) AS cumulative
FROM monthly;

-- Question 4
SELECT
    region,
    category,
    SUM(revenue) AS total_revenue,
    RANK() OVER (PARTITION BY region ORDER BY SUM(revenue) DESC) AS category_rank
FROM sales
GROUP BY region, category;
