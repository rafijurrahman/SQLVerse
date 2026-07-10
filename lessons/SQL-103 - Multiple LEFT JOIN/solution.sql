-- ============================================================
-- SQL Master
-- Lesson: SQL-103 — Multiple LEFT JOIN
-- ============================================================

-- Question 1
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id,
    r.review_id,
    r.rating
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN reviews r ON o.order_id = r.order_id;

-- Question 2
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN reviews r ON o.order_id = r.order_id
WHERE o.order_id IS NOT NULL AND r.review_id IS NULL;

-- Question 3
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    COUNT(DISTINCT o.order_id) AS order_count,
    COUNT(DISTINCT r.review_id) AS review_count
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN reviews r ON o.order_id = r.order_id
GROUP BY c.customer_id, c.first_name, c.last_name;

-- Question 4
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    AVG(r.rating) AS avg_rating
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN reviews r ON o.order_id = r.order_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY avg_rating DESC;
