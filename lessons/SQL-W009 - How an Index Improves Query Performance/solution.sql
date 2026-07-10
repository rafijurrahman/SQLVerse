-- ============================================================
-- SQL Master
-- Lesson: SQL-W009 — How an Index Improves Query Performance
-- ============================================================

-- Question 1
-- Step 1: Slow query
SELECT
    *
FROM orders
WHERE status = 'Completed' AND order_date > '2024-02-01';

-- Step 2: Create Index
CREATE INDEX idx_status_date ON orders(status, order_date);

-- Step 3: Fast query
SELECT
    *
FROM orders
WHERE status = 'Completed' AND order_date > '2024-02-01';

-- Question 2
-- 1. EXPLAIN before index
EXPLAIN
SELECT
    *
FROM orders
WHERE customer_id = 1;

-- 2. CREATE INDEX
CREATE INDEX idx_customer ON orders(customer_id);

-- 3. EXPLAIN after index
EXPLAIN
SELECT
    *
FROM orders
WHERE customer_id = 1;

-- Question 3
-- 1. Identify slow query
SELECT
    *
FROM orders
WHERE status = 'Completed';

-- 2. CREATE INDEX
CREATE INDEX idx_status ON orders(status);

-- 3. Verify WITH EXPLAIN
EXPLAIN
SELECT
    *
FROM orders
WHERE status = 'Completed';

-- 4. DROP INDEX
DROP INDEX idx_status ON orders;

-- Question 4
-- 1. Show existing indexes
SHOW INDEX
FROM orders;

-- 2. Create composite index
CREATE INDEX idx_status_amount ON orders(status, total_amount);

-- 3. Verify index creation
SHOW INDEX
FROM orders;

-- 4. Run EXPLAIN
EXPLAIN
SELECT
    *
FROM orders
WHERE status = 'Completed' AND total_amount > 2000;

-- 5. Drop index to rollback
DROP INDEX idx_status_amount ON orders;
