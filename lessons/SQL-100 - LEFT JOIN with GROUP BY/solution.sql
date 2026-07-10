-- ============================================================
-- SQL Master
-- Lesson: SQL-100 — LEFT JOIN with GROUP BY
-- ============================================================

-- Question 1
SELECT
    c.customer_id,
    c.first_name,
    SUM(o.total_amount) AS "Total Spending"
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id;

-- Question 2
SELECT
    c.customer_id,
    c.first_name,
    COALESCE(SUM(o.total_amount), 0) AS "Total Spending"
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id;

-- Question 3
SELECT
    c.first_name,
    c.last_name,
    c.city,
    COALESCE(COUNT(o.order_id), 0) AS "Total Orders",
    COALESCE(SUM(o.total_amount), 0) AS "Total Amount Spent",
    COALESCE(AVG(o.total_amount), 0) AS "Average Order Value"
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY COALESCE(SUM(o.total_amount), 0) DESC;

-- Question 4
SELECT
    c.customer_id,
    c.first_name,
    COALESCE(SUM(oi.quantity), 0) AS "Total Units Purchased"
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_id;
