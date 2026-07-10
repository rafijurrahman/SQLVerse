-- ============================================================
-- SQL Master
-- Lesson: SQL-W005 — FROM → JOIN → WHERE → GROUP BY → HAVING → ORDER BY
-- ============================================================

-- Question 1
SELECT
    c.first_name,
    o.order_id
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
WHERE o.total_amount > 2000
ORDER BY o.total_amount DESC;

-- Question 2
SELECT
    c.first_name,
    SUM(oi.quantity) AS total_quantity
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.status = 'Completed'
GROUP BY c.customer_id, c.first_name
HAVING SUM(oi.quantity) > 2
ORDER BY total_quantity DESC;

-- Question 3
-- Step 1 (FROM & JOIN): Gathers customers AND orders records
-- Step 2 (ON): Links customers AND orders by customer_id
-- Step 3 (WHERE): Filters for city='Dhaka' AND status='Completed'
-- Step 4 (GROUP BY): Groups by customer_id
-- Step 5 (HAVING): Filters groups WITH order_count >= 2 AND total_amount > 5000
-- Step 6 (
    SELECT

): Projects name, order_count, AND total_amount
-- Step 7 (ORDER BY): Orders by total_spent descending
SELECT
    CONCAT(c.first_name, ' ', c.last_name) AS name,
    COUNT(o.order_id) AS order_count,
    SUM(o.total_amount) AS total_spent
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
WHERE c.city = 'Dhaka' AND o.status = 'Completed'
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(o.order_id) >= 2 AND SUM(o.total_amount) > 5000
ORDER BY total_spent DESC;

-- Question 4
-- Tracing:
-- 1.
FROM & JOINS: Combines customers, orders, order_items, AND products tables. -- 2.
WHERE : Filters only Electronics category. -- 3.
GROUP BY : Groups by city AND product_name. -- 4.
HAVING : Filters groups
WHERE total units sold is greater than 3. -- 5.
SELECT
    : Calculates city,
    product_name,
    total units sold,
    AND total sales value.
-- 6.
ORDER BY : Sorts by total sales value descending.
SELECT
    c.city,
    p.product_name,
    SUM(oi.quantity) AS units_sold,
    SUM(oi.quantity * oi.unit_price) AS total_sales
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN order_items oi ON o.order_id = oi.order_id
INNER JOIN products p ON oi.product_id = p.product_id
WHERE p.category = 'Electronics'
GROUP BY c.city, p.product_id, p.product_name
HAVING SUM(oi.quantity) > 3
ORDER BY total_sales DESC;
