-- ============================================================
-- SQL Master
-- Lesson: SQL-168 — Composite Index
-- ============================================================

-- Question 1
CREATE INDEX idx_customer_status ON orders(customer_id, status);

SELECT
    *
FROM orders
WHERE customer_id = 1 AND status = 'Completed';

-- Question 2
CREATE INDEX idx_status_date ON orders(status, order_date);

-- Query that uses the index (Left-Prefix match)
SELECT
    *
FROM orders
WHERE status = 'Completed' AND order_date = '2024-01-05';

-- Query that does NOT use the index (skips leftmost column)
SELECT
    *
FROM orders
WHERE order_date = '2024-01-05';

-- Question 3
CREATE INDEX idx_status_date ON orders(status, order_date);

SELECT
    *
FROM orders
WHERE status = 'Completed' AND order_date BETWEEN '2024-01-01' AND '2024-03-31';

-- Question 4
CREATE INDEX idx_cust_status_date ON orders(customer_id, status, order_date);

-- Queries that DO benefit
FROM the index:
SELECT
    *
FROM orders
WHERE customer_id = 1;

SELECT
    *
FROM orders
WHERE customer_id = 1 AND status = 'Completed';

SELECT
    *
FROM orders
WHERE customer_id = 1 AND status = 'Completed' AND order_date = '2024-01-05';

-- Queries that do NOT benefit
FROM the index:
SELECT
    *
FROM orders
WHERE status = 'Completed';

SELECT
    *
FROM orders
WHERE order_date = '2024-01-05';
