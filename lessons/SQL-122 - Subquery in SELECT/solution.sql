-- ============================================================
-- SQL Master
-- Lesson: SQL-122 — Subquery in SELECT
-- ============================================================

-- Question 1
SELECT
    first_name,
    last_name,
    (
    SELECT
        COUNT(*)
    FROM orders o
    WHERE o.customer_id = c.customer_id
) AS order_count
FROM customers c;

-- Question 2
SELECT
    first_name,
    last_name,
    (
    SELECT
        MAX(total_amount)
    FROM orders o
    WHERE o.customer_id = c.customer_id
) AS max_order
FROM customers c;

-- Question 3
SELECT
    first_name,
    last_name,
    city,
    customer_type,
    (
    SELECT
        SUM(total_amount)
    FROM orders o
    WHERE o.customer_id = c.customer_id
) AS total_spent
FROM customers c;

-- Question 4
SELECT
    c.first_name,
    c.last_name,
    (
    SELECT
        COUNT(*)
    FROM orders o
    WHERE o.customer_id = c.customer_id
) AS total_orders,
    (
    SELECT
        SUM(total_amount)
    FROM orders o
    WHERE o.customer_id = c.customer_id
) AS total_spent,
    (
    SELECT
        AVG(total_amount)
    FROM orders o
    WHERE o.customer_id = c.customer_id
) AS avg_order_value
FROM customers c;
