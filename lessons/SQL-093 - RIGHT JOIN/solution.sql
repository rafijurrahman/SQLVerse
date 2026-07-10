-- ============================================================
-- SQL Master
-- Lesson: SQL-093 — RIGHT JOIN
-- ============================================================

-- Question 1
SELECT
    c.customer_id,
    c.first_name,
    o.order_id,
    o.total_amount
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;

-- Question 2
SELECT
    o.order_id,
    o.order_date,
    c.first_name
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;

-- Question 3
SELECT
    o.order_id,
    o.order_date,
    o.total_amount
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id
WHERE c.customer_id IS NULL;

-- Question 4
--
LEFT JOIN : Shows all customers
SELECT
    c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

--
RIGHT JOIN : Shows all orders
SELECT
    c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;
