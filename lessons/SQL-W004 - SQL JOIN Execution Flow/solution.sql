-- ============================================================
-- SQL Master
-- Lesson: SQL-W004 — SQL JOIN Execution Flow
-- ============================================================

-- Question 1
SELECT
    c.first_name,
    o.order_id
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id;

-- Execution Order:
-- 1.
FROM &
JOIN : Combines customer AND order rows into a single virtual table. -- 2. ON: Filters the product to only matched customer IDs. -- 3.
SELECT
    : Projects the requested fields.;

-- Question 2
SELECT
    CONCAT(c.first_name, ' ', c.last_name) AS name,
    COUNT(o.order_id) AS order_count
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE c.city = 'Dhaka'
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(o.order_id) > 0
ORDER BY order_count DESC;

-- Question 3
SELECT
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    SUM(o.total_amount) AS total_amount
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
WHERE o.status = 'Completed'
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(o.total_amount) > 1000
ORDER BY total_amount DESC;

-- Question 4
SELECT
    c.customer_id,
    c.first_name,
    o.order_id,
    o.status
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
WHERE c.joined_date > '2023-01-01' AND o.status = 'Completed';
