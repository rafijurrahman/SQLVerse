-- ============================================================
-- SQL Master
-- Lesson: SQL-C023 — Subquery vs JOIN
-- ============================================================

-- Question 1
-- A:
JOIN 
SELECT DISTINCT
    c.customer_id,
    c.first_name,
    c.last_name
FROM customers c
INNER JOIN orders o ON o.customer_id = c.customer_id;

-- B: Subquery
SELECT
    customer_id,
    first_name,
    last_name
FROM customers
WHERE customer_id IN ( SELECT customer_id FROM orders );

-- Question 2
-- A:
JOIN +
GROUP BY 
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(o.total_amount) AS total_spending
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;

-- B: Correlated Subquery IN
SELECT
    
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    (
    SELECT
        SUM(o.total_amount)
    FROM orders o
    WHERE o.customer_id = c.customer_id
) AS total_spending
FROM customers c;

-- Question 3
-- A:
JOIN +
GROUP BY +
ORDER BY +
LIMIT 1
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(o.total_amount) AS total_spending
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spending DESC
LIMIT 1;

-- B: Subquery
SELECT
    customer_id,
    first_name,
    last_name
FROM customers
WHERE customer_id = ( SELECT customer_id FROM orders GROUP BY customer_id ORDER BY SUM(total_amount) DESC LIMIT 1 );

-- Question 4
-- A:
JOIN approach
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(o.total_amount) AS total_spending
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(o.total_amount) > ( SELECT AVG(total_amount) FROM orders );

-- B: Subquery approach
SELECT
    c.customer_id,
    c.first_name,
    c.last_name
FROM customers c
WHERE ( SELECT SUM(o.total_amount) FROM orders o WHERE o.customer_id = c.customer_id ) > ( SELECT AVG(total_amount) FROM orders );
