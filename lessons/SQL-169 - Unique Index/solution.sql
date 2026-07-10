-- ============================================================
-- SQL Master
-- Lesson: SQL-169 — Unique Index
-- ============================================================

-- Question 1
CREATE UNIQUE INDEX idx_email_unique ON orders(email);

-- Question 2
-- This insert will fail due to a duplicate entry key constraint
INSERT INTO orders VALUES (1011, 2, '2024-05-05', 'Completed', 1500.00, 'r@shop.com');

-- Verify the table's state
SELECT email, COUNT(*) FROM orders GROUP BY email;

-- Question 3
CREATE UNIQUE INDEX idx_email_unique ON orders(email);

SELECT
    email,
    COUNT(*)
FROM orders
GROUP BY email
HAVING COUNT(*) > 1;

-- Question 4
-- Constraint version:
ALTER TABLE orders ADD CONSTRAINT uq_email UNIQUE (email);

-- Index version:
CREATE UNIQUE INDEX idx_email_unique ON orders(email);

-- Discussion:
-- Both enforce uniqueness, AND a constraint actually creates a unique index internally.
-- Prefer constraints for standard logical schema design AND CREATE UNIQUE INDEX for performance tuning.;
