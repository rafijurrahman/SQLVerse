-- ============================================================
-- SQL Master
-- Lesson: SQL-111 — LEFT JOIN Common Mistakes
-- ============================================================

-- Question 1
-- Wrong version
SELECT
    c.customer_id,
    c.first_name,
    o.order_id,
    o.status
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.status = 'Completed';

-- Correct version
SELECT
    c.customer_id,
    c.first_name,
    o.order_id,
    o.status
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id AND o.status = 'Completed';

-- Question 2
-- Wrong version
SELECT
    c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.total_amount > 2000;

-- Correct version
SELECT
    c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id AND o.total_amount > 2000;

-- Question 3
-- Wrong version
SELECT
    c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.status = 'Cancelled' OR o.order_id IS NULL;

-- Correct version
SELECT
    c.customer_id,
    c.first_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name
HAVING COUNT(o.order_id) = 0 OR COUNT(CASE WHEN o.status != 'Cancelled' THEN 1 END) = 0;

-- Question 4
SELECT
    c.customer_id,
    c.first_name,
    o.order_id,
    o.status
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id AND o.status = 'Completed';
