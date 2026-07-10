-- ============================================================
-- SQL Master
-- Lesson: SQL-130 — WITH (Common Table Expression)
-- ============================================================

-- Question 1
WITH regional_revenue AS (
    SELECT
        region,
        SUM(revenue) AS total_revenue
    FROM sales
    GROUP BY region
)
SELECT
    region,
    total_revenue
FROM regional_revenue
ORDER BY total_revenue DESC;

-- Question 2
WITH avg_rev AS (
    SELECT
        AVG(revenue) AS avg_val
    FROM sales
)
SELECT
    s.*,
    a.avg_val
FROM sales s, avg_rev a
WHERE s.revenue > a.avg_val;

-- Question 3
WITH category_summary AS (
    SELECT
        category,
        COUNT(*) AS sales_count,
        SUM(revenue) AS total,
        AVG(revenue) AS avg_rev
    FROM sales
    GROUP BY category
)
SELECT
    category,
    sales_count,
    total,
    avg_rev
FROM category_summary
ORDER BY total DESC;

-- Question 4
WITH sale_profit AS (
    SELECT
        product,
        region,
        revenue,
        cost,
        (revenue - cost) AS profit
    FROM sales
)
SELECT
    product,
    region,
    revenue,
    cost,
    profit
FROM sale_profit
ORDER BY profit DESC
LIMIT 5;
