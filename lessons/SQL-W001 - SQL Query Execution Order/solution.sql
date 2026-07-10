-- ============================================================
-- SQL Master
-- Lesson: SQL-W001 — SQL Query Execution Order
-- ============================================================

-- Question 1
SELECT
    *
FROM orders
WHERE status = 'Completed';

-- Question 2
SELECT
    city,
    COUNT(*) AS completed_order_count
FROM orders
WHERE status = 'Completed'
GROUP BY city;

-- Question 3
SELECT
    city,
    COUNT(*) AS total_completed_orders
FROM orders
WHERE status = 'Completed'
GROUP BY city
HAVING COUNT(*) > 1
ORDER BY total_completed_orders DESC;

-- Question 4
SELECT
    city,
    COUNT(order_id) AS total_orders,
    SUM(total_amount) AS total_revenue
FROM orders
WHERE status = 'Completed' AND order_date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY city
HAVING SUM(total_amount) > 5000
ORDER BY total_revenue DESC;
