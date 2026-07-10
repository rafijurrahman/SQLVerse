-- ============================================================
-- SQL Master
-- Lesson: SQL-123 — Subquery in FROM
-- ============================================================

-- Question 1
SELECT
    customer_id,
    order_count
FROM ( SELECT customer_id, COUNT(*) AS order_count FROM orders GROUP BY customer_id ) AS sub
WHERE order_count > 1;

-- Question 2
SELECT
    customer_id,
    total
FROM ( SELECT customer_id, SUM(total_amount) AS total FROM orders GROUP BY customer_id ) AS spend
WHERE total > ( SELECT AVG(total_amount) FROM orders );

-- Question 3
SELECT
    c.first_name,
    sub.order_count,
    sub.total_spent
FROM customers c
INNER JOIN ( SELECT customer_id, COUNT(*) AS order_count, SUM(total_amount) AS total_spent FROM orders GROUP BY customer_id ) AS sub ON c.customer_id = sub.customer_id;

-- Question 4
SELECT
    c.first_name,
    c.last_name,
    c.city,
    c.customer_type,
    sub.total_spending
FROM customers c
INNER JOIN ( SELECT customer_id, SUM(total_amount) AS total_spending FROM orders GROUP BY customer_id ORDER BY total_spending DESC LIMIT 3 ) AS sub ON c.customer_id = sub.customer_id;
