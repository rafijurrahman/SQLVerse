-- ============================================================
-- SQL Master
-- Lesson: SQL-W010 — SQL Query Optimization Workflow
-- ============================================================

-- Question 1
-- Query Optimization Workflow Steps:
-- 1. Identify slow-running queries using Slow Query Logs OR APM tools.
-- 2. Analyze the execution plan using the EXPLAIN statement.
-- 3. Check for bottlenecks such AS Full Table Scans, large joins, OR disk temp tables.
-- 4. Add optimal indexes (e.g., covering indexes, composite indexes) OR rewrite queries to be SARGable.
-- 5. Validate improvements WITH EXPLAIN AND benchmark response times under load.;

-- Question 2
-- 1. Analyze execution plan
EXPLAIN
SELECT
    *
FROM orders
WHERE status = 'Completed';

-- 2. Bottleneck: Full Table Scan ON orders because status is NOT indexed.
-- 3. Proposed solution: Create a single-column index ON status.
CREATE INDEX idx_status ON orders(status);

-- Question 3
-- 1. Slow Query: grouping orders by customer
SELECT
    customer_id,
    SUM(total_amount)
FROM orders
GROUP BY customer_id;

-- 2. Create index ON grouping key to avoid filesort
CREATE INDEX idx_customer_id ON orders(customer_id);

-- 3. Verify optimization
EXPLAIN
SELECT
    customer_id,
    SUM(total_amount)
FROM orders
GROUP BY customer_id;

-- Question 4
-- Slow Query: non-SARGable
WHERE filter (prevents index scan) --
SELECT
    *
FROM orders
WHERE YEAR(order_date) = 2024;

-- Create Index:
CREATE INDEX idx_order_date ON orders(order_date);

-- Optimized Query:
SELECT
    *
FROM orders
WHERE order_date BETWEEN '2024-01-01' AND '2024-12-31';

-- Explanation: Year function forces table scan. Rewriting to date range allows range scans ON the idx_order_date index.;
