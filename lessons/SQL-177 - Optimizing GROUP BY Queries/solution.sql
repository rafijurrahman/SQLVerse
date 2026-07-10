-- ============================================================
-- SQL Master
-- Lesson: SQL-177 — Optimizing GROUP BY Queries
-- ============================================================

-- Question 1
SELECT
    customer_id,
    COUNT(order_id) AS completed_orders,
    SUM(total_amount) AS total_spent
FROM orders
WHERE status = 'Completed'
GROUP BY customer_id;

-- Question 2
-- CREATE INDEX idx_status ON orders(status);

SELECT
    status,
    COUNT(*)
FROM orders
GROUP BY status;

-- Question 3
SELECT
    MONTH(order_date) AS order_month,
    SUM(total_amount) AS monthly_revenue
FROM orders
WHERE order_date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY MONTH(order_date);

-- Question 4
-- (A) Non-indexed column
GROUP BY (uses temporary table AND filesort) EXPLAIN
SELECT
    total_amount,
    COUNT(*)
FROM orders
GROUP BY total_amount;

-- (B) Indexed low-cardinality column
GROUP BY (uses index scan, highly optimized) EXPLAIN
SELECT
    status,
    COUNT(*)
FROM orders
GROUP BY status;
