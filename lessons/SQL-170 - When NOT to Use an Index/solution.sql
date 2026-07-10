-- ============================================================
-- SQL Master
-- Lesson: SQL-170 — When NOT to Use an Index
-- ============================================================

-- Question 1
EXPLAIN
SELECT
    *
FROM orders
WHERE email LIKE '%shop.com';

-- Question 2
EXPLAIN
SELECT
    *
FROM orders
WHERE status = 'Completed';

-- Question 3
INSERT INTO orders VALUES (1011, 2, '2024-05-05', 'Completed', 1500.00, 'new@shop.com');

-- Discussion:
-- While indexes speed up SELECTs, every index ON orders adds overhead to INSERT/UPDATE/DELETE operations.
-- If the table has 5 indexes, MySQL must perform 5 index updates for every single write.;

-- Question 4
-- (A) Function usage vs Range search
-- Non-optimal (index bypassed):
SELECT
    *
FROM orders
WHERE YEAR(order_date) = 2024;

-- Optimal (index utilized):
SELECT
    *
FROM orders
WHERE order_date BETWEEN '2024-01-01' AND '2024-12-31';

-- (B) Negative comparison vs Positive comparison
-- Non-optimal (index bypassed):
SELECT
    *
FROM orders
WHERE status NOT IN ('Completed', 'Shipped');

-- Optimal (index utilized):
SELECT
    *
FROM orders
WHERE status IN ('Cancelled', 'Pending');
