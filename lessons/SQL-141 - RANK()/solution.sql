-- ============================================================
-- SQL Master
-- Lesson: SQL-141 — RANK()
-- ============================================================

-- Question 1
SELECT
    sale_id,
    product,
    revenue,
    RANK() OVER (ORDER BY revenue DESC) AS rank_pos
FROM sales;

-- Question 2
SELECT
    category,
    product,
    revenue,
    RANK() OVER (PARTITION BY category ORDER BY revenue DESC) AS cat_rank
FROM sales;

-- Question 3
SELECT
    category,
    product,
    revenue,
    RANK() OVER (PARTITION BY category ORDER BY revenue DESC) AS `Category RANK`
FROM sales;

-- Question 4
SELECT
    sale_id,
    sale_date,
    region,
    store,
    category,
    product,
    revenue,
    units_sold,
    cost
FROM ( SELECT *, RANK() OVER (PARTITION BY category ORDER BY revenue DESC) AS rnk FROM sales ) AS r
WHERE rnk <= 2;
