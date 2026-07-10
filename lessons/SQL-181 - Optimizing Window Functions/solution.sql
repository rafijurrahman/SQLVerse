-- ============================================================
-- SQL Master
-- Lesson: SQL-181 — Optimizing Window Functions
-- ============================================================

-- Question 1
SELECT
    order_id,
    customer_id,
    total_amount,
    DENSE_RANK() OVER (ORDER BY total_amount DESC) AS amount_rank
FROM orders;

-- Question 2
WITH RankedOrders AS (
    SELECT
        order_id,
        customer_id,
        total_amount,
        DENSE_RANK() OVER (ORDER BY total_amount DESC) AS amount_rank
    FROM orders
)
SELECT
    order_id,
    customer_id,
    total_amount,
    amount_rank
FROM RankedOrders
WHERE amount_rank <= 5;

-- Explanation:
-- SQL query execution order processes the
WHERE clause before window functions. -- AS a result, referencing a window function alias IN the
WHERE clause of the same level is syntax-invalid. -- Projecting the window function within a CTE (OR subquery) AND filtering ON the calculated RANK IN the outer query is the only valid way to filter.;

-- Question 3
WITH CustomerTopOrders AS (
    SELECT
        order_id,
        customer_id,
        total_amount,
        order_date,
        ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY total_amount DESC) AS rn
    FROM orders
)
SELECT
    order_id,
    customer_id,
    total_amount,
    order_date
FROM CustomerTopOrders
WHERE rn <= 2;

-- Question 4
-- Explanation of Partitioning AND Sorting Optimization:
-- 1. Execution Cost: PARTITION BY customer_id
ORDER BY total_amount DESC requires sorting the rows for each partition. Without an index, the database must perform an expensive filesort. -- 2. Index Benefit: A composite index ON (customer_id, total_amount) stores rows pre-grouped by customer_id AND pre-sorted by total_amount. -- 3. Optimization: MySQL can read the pre-sorted data directly
FROM the index, eliminating the filesort stage AND optimizing execution time
FROM O(N log N) to O(N).;
