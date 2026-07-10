-- ============================================================
-- SQL Master
-- Lesson: SQL-167 — Non Clustered Index
-- ============================================================

-- Question 1
CREATE INDEX idx_status ON orders(status);

SELECT
    *
FROM orders
WHERE status = 'Completed';

-- Question 2
CREATE INDEX idx_date ON orders(order_date);

SELECT
    *
FROM orders
WHERE order_date BETWEEN '2024-01-01' AND '2024-03-31';

-- Question 3
CREATE INDEX idx_email ON orders(email);

SELECT
    *
FROM orders
WHERE email = 'r@shop.com';

-- Explanation:
-- The non-clustered index ON email stores sorted email VALUES AND their PRIMARY KEY REFERENCES.
-- MySQL scans the index to find the email, THEN uses the order_id pointer to fetch the full row.;

-- Question 4
CREATE INDEX idx_status ON orders(status);

CREATE INDEX idx_date ON orders(order_date);

CREATE INDEX idx_customer ON orders(customer_id);

SELECT
    *
FROM orders
WHERE status = 'Completed' AND order_date = '2024-01-05' AND customer_id = 1;

-- Explanation:
-- MySQL evaluates statistics for each index AND chooses the single most selective index to execute.;
