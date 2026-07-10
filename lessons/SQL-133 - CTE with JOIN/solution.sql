-- ============================================================
-- SQL Master
-- Lesson: SQL-133 — CTE with JOIN
-- ============================================================

-- Question 1
WITH sales_summary AS (
    SELECT
        product,
        SUM(revenue) AS total
    FROM sales
    GROUP BY product
)
SELECT
    p.product_name,
    p.target_price,
    ss.total AS actual_revenue
FROM products p
INNER JOIN sales_summary ss ON p.product_name = ss.product;

-- Question 2
WITH profit_cte AS (
    SELECT
        product,
        SUM(revenue - cost) AS profit
    FROM sales
    GROUP BY product
)
SELECT
    p.product_name,
    p.target_price,
    pc.profit AS actual_profit
FROM products p
INNER JOIN profit_cte pc ON p.product_name = pc.product;

-- Question 3
WITH sales_summary AS (
    SELECT
        product,
        SUM(revenue) AS actual_revenue
    FROM sales
    GROUP BY product
)
SELECT
    p.product_name,
    p.target_price,
    ss.actual_revenue,
    (ss.actual_revenue - p.target_price) AS variance
FROM products p
INNER JOIN sales_summary ss ON p.product_name = ss.product;

-- Question 4
WITH category_avg AS (
    SELECT
        category,
        AVG(revenue) AS avg_revenue
    FROM sales
    GROUP BY category
),
top_products AS (
    SELECT
        s.product,
        s.category,
        SUM(s.revenue) AS actual_revenue
    FROM sales s
    INNER JOIN category_avg ca ON s.category = ca.category
    GROUP BY s.product, s.category, ca.avg_revenue
    HAVING SUM(s.revenue) > ca.avg_revenue
)
SELECT
    p.product_name,
    p.category,
    tp.actual_revenue,
    p.target_price
FROM products p
INNER JOIN top_products tp ON p.product_name = tp.product;
