-- ============================================================
-- SQL Master
-- Lesson: SQL-155 — Bottom N per Group
-- ============================================================

-- Question 1
SELECT
    *
FROM ( SELECT *, ROW_NUMBER() OVER (ORDER BY revenue ASC) AS rn FROM sales ) AS r
WHERE rn <= 3;

-- Question 2
SELECT
    *
FROM ( SELECT *, ROW_NUMBER() OVER (PARTITION BY category ORDER BY revenue ASC) AS rn FROM sales ) AS r
WHERE rn <= 2;

-- Question 3
WITH store_rev AS (
    SELECT
        region,
        store,
        SUM(revenue) AS total_revenue,
        ROW_NUMBER() OVER (PARTITION BY region ORDER BY SUM(revenue) ASC) AS rn
    FROM sales
    GROUP BY region, store
)
SELECT
    region,
    store,
    total_revenue
FROM store_rev
WHERE rn = 1;

-- Question 4
SELECT
    *
FROM ( SELECT *, CASE WHEN ROW_NUMBER() OVER (PARTITION BY category ORDER BY revenue DESC) <= 2 THEN 'Top 2' WHEN ROW_NUMBER() OVER (PARTITION BY category ORDER BY revenue ASC) <= 2 THEN 'Bottom 2' END AS tier FROM sales ) AS sub
WHERE tier IS NOT NULL;
