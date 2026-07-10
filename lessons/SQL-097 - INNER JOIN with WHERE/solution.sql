-- ============================================================
-- SQL Master
-- Lesson: SQL-097 — INNER JOIN with WHERE
-- ============================================================

-- Question 1
SELECT
    c.first_name,
    c.last_name,
    o.order_id,
    o.status
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
WHERE o.status = 'Completed';

-- Question 2
SELECT
    c.first_name,
    o.order_id,
    o.order_date
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_date BETWEEN '2024-01-01' AND '2024-01-31';

-- Question 3
SELECT
    c.first_name,
    c.last_name,
    o.order_id,
    o.total_amount
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
WHERE c.city = 'Dhaka' AND o.status = 'Completed';

-- Question 4
SELECT
    c.first_name,
    c.last_name,
    o.order_id,
    o.total_amount,
    c.city,
    o.status
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
WHERE c.city IN ('Dhaka', 'Chittagong') AND o.total_amount > 2000 AND o.status = 'Completed'
ORDER BY o.total_amount DESC;
