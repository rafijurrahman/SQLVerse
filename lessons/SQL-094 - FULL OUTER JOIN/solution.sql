-- ============================================================
-- SQL Master
-- Lesson: SQL-094 — FULL OUTER JOIN
-- ============================================================

-- Question 1
SELECT
    c.customer_id,
    c.first_name,
    o.order_id,
    o.total_amount
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
UNION 
SELECT
    c.customer_id,
    c.first_name,
    o.order_id,
    o.total_amount
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;

-- Question 2
SELECT
    c.customer_id,
    c.first_name,
    o.order_id,
    o.total_amount
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
UNION ALL 
SELECT
    c.customer_id,
    c.first_name,
    o.order_id,
    o.total_amount
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id
WHERE c.customer_id IS NULL;

-- Question 3
SELECT
    c.customer_id,
    c.first_name,
    o.order_id,
    o.total_amount
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL
UNION ALL 
SELECT
    c.customer_id,
    c.first_name,
    o.order_id,
    o.total_amount
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id
WHERE c.customer_id IS NULL;

-- Question 4
SELECT
    COALESCE(c.customer_id, o.customer_id) AS cust_id,
    c.first_name AS customer_name,
    o.order_id,
    CASE 
        WHEN c.customer_id IS NOT NULL AND o.order_id IS NOT NULL THEN 'Has Order'
        WHEN c.customer_id IS NOT NULL AND o.order_id IS NULL THEN 'No Order'
        WHEN c.customer_id IS NULL AND o.order_id IS NOT NULL THEN 'No Customer'
    END AS flag
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
UNION ALL 
SELECT
    COALESCE(c.customer_id, o.customer_id) AS cust_id,
    c.first_name AS customer_name,
    o.order_id,
    CASE 
        WHEN c.customer_id IS NOT NULL AND o.order_id IS NOT NULL THEN 'Has Order'
        WHEN c.customer_id IS NOT NULL AND o.order_id IS NULL THEN 'No Order'
        WHEN c.customer_id IS NULL AND o.order_id IS NOT NULL THEN 'No Customer'
    END AS flag
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id
WHERE c.customer_id IS NULL;
