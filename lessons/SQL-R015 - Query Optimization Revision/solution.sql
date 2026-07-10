-- ============================================================
-- SQL Master
-- Lesson: SQL-R015 — Query Optimization Revision
-- ============================================================

-- Question 1
SELECT
    *
FROM orders
WHERE order_date = '2024-01-05';

-- Question 2
SELECT
    *
FROM orders
WHERE order_date BETWEEN '2024-01-01' AND '2024-12-31';

-- Question 3
EXPLAIN
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id,
    o.total_amount
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
WHERE c.city = 'Dhaka' AND o.status = 'Completed';

-- Question 4
WITH avg_amount AS (
    SELECT
        AVG(total_amount) AS avg_val
    FROM orders
),
vip_customers AS (
    SELECT DISTINCT
        o.customer_id
    FROM orders o, avg_amount
    WHERE o.total_amount > avg_amount.avg_val
)
SELECT
    c.customer_id,
    c.first_name,
    c.last_name
FROM customers c
INNER JOIN vip_customers vc ON c.customer_id = vc.customer_id;

-- Performance Gains:
-- 1. Minimizes subquery overhead by defining average spend once IN a single CTE lookup.
-- 2.
INNER JOIN utilizes primary/FOREIGN KEY index scans effectively compared to large IN checks.;
