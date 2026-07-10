-- ============================================================
-- SQL Master
-- Lesson: SQL-R014 — Index Revision
-- ============================================================

-- Question 1
CREATE INDEX idx_customer_id ON orders(customer_id);

CREATE INDEX idx_order_date ON orders(order_date);

CREATE UNIQUE INDEX idx_email ON orders(email);

SHOW INDEX
FROM orders;

-- Question 2
CREATE INDEX idx_status_date ON orders(status, order_date);

EXPLAIN
SELECT
    *
FROM orders
WHERE status = 'Completed' AND order_date BETWEEN '2024-01-01' AND '2024-02-01';

-- Question 3
CREATE INDEX idx_cust ON orders(customer_id);

CREATE INDEX idx_stat ON orders(status);

CREATE INDEX idx_dt ON orders(order_date);

SELECT
    *
FROM orders
WHERE customer_id = 1 AND status = 'Completed' AND order_date = '2024-01-05';

-- Question 4
-- Optimal index creation statements:
CREATE INDEX idx_status ON orders(status);

CREATE INDEX idx_cust_date ON orders(customer_id, order_date);

-- Drop redundant index:
DROP INDEX idx_customer_id ON orders;
