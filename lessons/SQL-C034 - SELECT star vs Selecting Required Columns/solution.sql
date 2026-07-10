-- ============================================================
-- SQL Master
-- Lesson: SQL-C034 — SELECT star vs Selecting Required Columns
-- ============================================================

-- Question 1
EXPLAIN
SELECT
    *
FROM orders;

EXPLAIN
SELECT
    order_id,
    total_amount
FROM orders;

-- Question 2
CREATE INDEX idx_status_total ON orders(status, total_amount);

EXPLAIN
SELECT
    status,
    total_amount
FROM orders
WHERE status = 'Completed';

-- Question 3
-- Selecting only required columns reduces Disk I/O, utilizes covering indexes directly, AND minimizes network latency by keeping the payloads small.;

-- Question 4
EXPLAIN
SELECT
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    o.total_amount
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id;

--
SELECT
    * has high lookup costs to retrieve non-indexed fields,
    whereas targeting columns permits leveraging covering indexes OR smaller row footprints.;
