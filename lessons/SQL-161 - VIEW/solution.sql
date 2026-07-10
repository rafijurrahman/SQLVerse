-- ============================================================
-- SQL Master
-- Lesson: SQL-161 — VIEW
-- ============================================================

-- Question 1
CREATE VIEW customer_orders AS
SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS name,
    o.order_id,
    o.total_amount,
    o.status
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;

SELECT
    *
FROM customer_orders;

-- Question 2
CREATE VIEW completed_orders AS
SELECT
    *
FROM orders
WHERE status = 'Completed';

SELECT
    *
FROM completed_orders
WHERE total_amount > 2000;

-- Question 3
CREATE VIEW order_summary AS
SELECT
    o.order_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    o.total_amount,
    o.status,
    o.order_date
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

SELECT
    *
FROM order_summary
ORDER BY total_amount DESC
LIMIT 5;

-- Question 4
CREATE VIEW customer_stats AS
SELECT
    customer_id,
    COUNT(*) AS order_count,
    SUM(total_amount) AS total_spent,
    AVG(total_amount) AS avg_order
FROM orders
GROUP BY customer_id;

SELECT
    *
FROM customer_stats
WHERE total_spent > 5000;
