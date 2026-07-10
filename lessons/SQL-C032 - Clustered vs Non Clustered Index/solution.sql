-- ============================================================
-- SQL Master
-- Lesson: SQL-C032 — Clustered vs Non Clustered Index
-- ============================================================

-- Question 1
EXPLAIN
SELECT
    *
FROM orders
WHERE order_id = 1001;

EXPLAIN
SELECT
    *
FROM orders
WHERE status = 'Completed';

-- Question 2
CREATE INDEX idx_status ON orders(status);

CREATE INDEX idx_date ON orders(order_date);

CREATE INDEX idx_email ON orders(email);

-- Question 3
EXPLAIN
SELECT
    *
FROM orders
WHERE order_id BETWEEN 1001 AND 1005;

EXPLAIN
SELECT
    *
FROM orders
WHERE email = 'r@shop.com';

-- Question 4
-- If query patterns frequently filter AND sort by customer_id, shifting the clustered index would eliminate sorting cost.
SELECT
    *
FROM orders
WHERE customer_id = 1
ORDER BY order_date;
