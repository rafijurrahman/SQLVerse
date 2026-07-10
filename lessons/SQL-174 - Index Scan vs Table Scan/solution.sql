-- ============================================================
-- SQL Master
-- Lesson: SQL-174 — Index Scan vs Table Scan
-- ============================================================

-- Question 1
CREATE INDEX idx_status ON orders(status);

EXPLAIN
SELECT
    *
FROM orders
WHERE status = 'Completed';

-- Question 2
CREATE INDEX idx_date ON orders(order_date);

EXPLAIN
SELECT
    *
FROM orders
WHERE order_date BETWEEN '2024-01-01' AND '2024-03-31';

-- Question 3
CREATE INDEX idx_customer ON orders(customer_id);

CREATE INDEX idx_status ON orders(status);

EXPLAIN
SELECT
    *
FROM orders
WHERE customer_id = 1 AND status = 'Completed';

-- Question 4
-- Full Table Scan: O(N) complexity
EXPLAIN
SELECT
    *
FROM orders
WHERE total_amount = 3500;

-- Index Scan: O(log N + matching rows) complexity
EXPLAIN
SELECT
    *
FROM orders
WHERE status = 'Completed';
