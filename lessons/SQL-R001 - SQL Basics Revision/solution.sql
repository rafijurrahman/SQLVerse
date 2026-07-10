-- ============================================================
-- SQL Master
-- Lesson: SQL-R001 — SQL Basics Revision
-- ============================================================

-- Question 1
-- A: Price > 500
SELECT
    *
FROM products
WHERE price > 500;

-- B: Customers
FROM Dhaka
SELECT
    *
FROM customers
WHERE city = 'Dhaka';

-- C: Completed orders
SELECT
    *
FROM orders
WHERE status = 'Completed';

-- Question 2
SELECT
    *
FROM products
WHERE category = 'Electronics' AND price BETWEEN 500 AND 3000
ORDER BY price ASC;

SELECT
    *
FROM customers
WHERE phone IS NULL;

-- Question 3
-- A: Top 3 most expensive products
SELECT
    *
FROM products
ORDER BY price DESC
LIMIT 3;

-- B: Customers WITH phone AND
FROM Dhaka
SELECT
    *
FROM customers
WHERE phone IS NOT NULL AND city = 'Dhaka';

-- C: Completed orders
FROM January 2024
SELECT
    *
FROM orders
WHERE status = 'Completed' AND order_date BETWEEN '2024-01-01' AND '2024-01-31';

-- Question 4
SELECT DISTINCT
    city
FROM customers;

SELECT
    *
FROM orders
WHERE total_amount > 2000 AND status != 'Cancelled';
