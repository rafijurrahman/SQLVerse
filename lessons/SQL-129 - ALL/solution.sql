-- ============================================================
-- SQL Master
-- Lesson: SQL-129 — ALL
-- ============================================================

-- Question 1
SELECT
    sale_id,
    product,
    category,
    revenue
FROM sales
WHERE revenue > ALL ( SELECT revenue FROM sales WHERE category = 'Stationery' );

-- Question 2
SELECT
    sale_id,
    product,
    region,
    revenue
FROM sales
WHERE revenue > ALL ( SELECT revenue FROM sales WHERE region = 'Chittagong' );

-- Question 3
SELECT
    sale_id,
    product,
    category,
    revenue
FROM sales
WHERE category = 'Electronics' AND revenue > ALL ( SELECT revenue FROM sales WHERE category = 'Stationery' );

-- Question 4
-- Query A: beats at least one Furniture sale (> ANY)
SELECT
    sale_id,
    product,
    revenue
FROM sales
WHERE revenue > ANY ( SELECT revenue FROM sales WHERE category = 'Furniture' );

-- Query B: beats every Furniture sale (> ALL)
SELECT
    sale_id,
    product,
    revenue
FROM sales
WHERE revenue > ALL ( SELECT revenue FROM sales WHERE category = 'Furniture' );
