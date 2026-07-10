-- ============================================================
-- SQL Master
-- Lesson: SQL-154 — Top N per Group
-- ============================================================

-- Question 1
SELECT
    *
FROM ( SELECT *, ROW_NUMBER() OVER (ORDER BY revenue DESC) AS rn FROM sales ) AS r
WHERE rn <= 3;

-- Question 2
SELECT
    *
FROM ( SELECT *, ROW_NUMBER() OVER (PARTITION BY category ORDER BY revenue DESC) AS rn FROM sales ) AS r
WHERE rn <= 2;

-- Question 3
SELECT
    *
FROM ( SELECT *, ROW_NUMBER() OVER (PARTITION BY region ORDER BY revenue DESC) AS rn FROM sales ) AS r
WHERE rn = 1;

-- Question 4
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
    rnk
FROM ( SELECT store, total, RANK() OVER (ORDER BY total DESC) AS rnk FROM store_rev ) AS sub
WHERE rnk <= 3;
