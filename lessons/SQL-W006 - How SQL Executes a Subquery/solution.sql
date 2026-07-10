-- ============================================================
-- SQL Master
-- Lesson: SQL-W006 — How SQL Executes a Subquery
-- ============================================================

-- Question 1
SELECT
    *
FROM orders
WHERE total_amount > ( SELECT AVG(total_amount) FROM orders );

-- Question 2
SELECT
    *
FROM ( SELECT customer_id, SUM(total_amount) AS spend FROM orders GROUP BY customer_id ) AS sub
WHERE spend > 3000;

-- Question 3
SELECT
    *
FROM customers c
WHERE EXISTS ( SELECT 1 FROM orders o WHERE o.customer_id = c.customer_id );

-- Question 4
SELECT
    *
FROM customers
WHERE city IN ( SELECT city FROM customers WHERE customer_id IN ( SELECT customer_id FROM customers WHERE customer_type = 'VIP' ) ) AND customer_type != 'VIP';
