-- ============================================================
-- SQL Master
-- Lesson: SQL-128 — ANY
-- ============================================================

-- Question 1
SELECT
    sale_id,
    product,
    category,
    revenue
FROM sales
WHERE revenue > ANY ( SELECT revenue FROM sales WHERE category = 'Stationery' );

-- Question 2
SELECT
    sale_id,
    product,
    region,
    units_sold
FROM sales
WHERE units_sold > ANY ( SELECT units_sold FROM sales WHERE region = 'Sylhet' );

-- Question 3
SELECT
    sale_id,
    product,
    category,
    revenue
FROM sales
WHERE category = 'Electronics' AND revenue > ANY ( SELECT revenue FROM sales WHERE category = 'Stationery' );

-- Question 4
SELECT DISTINCT
    product,
    region,
    revenue
FROM sales
WHERE revenue > ANY ( SELECT revenue FROM sales WHERE category = 'Furniture' );
