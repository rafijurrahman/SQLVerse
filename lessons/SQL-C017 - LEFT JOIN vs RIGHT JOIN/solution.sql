-- ============================================================
-- SQL Master
-- Lesson: SQL-C017 — LEFT JOIN vs RIGHT JOIN
-- ============================================================

-- Question 1
SELECT
    c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

SELECT
    c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;

-- Question 2
SELECT
    c.customer_id,
    o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

SELECT
    c.customer_id,
    o.order_id
FROM orders o
RIGHT JOIN customers c ON c.customer_id = o.customer_id;

-- Question 3
-- A:
LEFT JOIN 
SELECT
    c.first_name,
    c.last_name,
    o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

-- B:
RIGHT JOIN 
SELECT
    c.first_name,
    c.last_name,
    o.order_id
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;

-- Question 4
--
LEFT JOIN 
SELECT
    c.customer_id,
    o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

--
RIGHT JOIN Swapping Tables
SELECT
    c.customer_id,
    o.order_id
FROM orders o
RIGHT JOIN customers c ON o.customer_id = c.customer_id;
