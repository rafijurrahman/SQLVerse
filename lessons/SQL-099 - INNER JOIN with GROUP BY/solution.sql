-- ============================================================
-- SQL Master
-- Lesson: SQL-099 — INNER JOIN with GROUP BY
-- ============================================================

-- Question 1
SELECT
    c.customer_id,
    c.first_name,
    COUNT(o.order_id)
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id;

-- Question 2
SELECT
    c.first_name,
    c.last_name,
    COALESCE(COUNT(o.order_id), 0) AS "Total Orders"
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id;

-- Question 3
SELECT
    c.first_name,
    c.last_name,
    c.city,
    COALESCE(COUNT(o.order_id), 0) AS "Total Orders",
    COALESCE(SUM(o.total_amount), 0) AS "Total Amount Spent"
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY COUNT(o.order_id) DESC;

-- Question 4
SELECT
    c.customer_id,
    c.first_name,
    COUNT(o.order_id) AS "Order Count"
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING COUNT(o.order_id) > 1
ORDER BY COUNT(o.order_id) DESC;
