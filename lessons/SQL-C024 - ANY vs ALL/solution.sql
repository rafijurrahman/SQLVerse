-- ============================================================
-- SQL Master
-- Lesson: SQL-C024 — ANY vs ALL
-- ============================================================

-- Question 1
-- A: > ANY
SELECT
    *
FROM sales
WHERE revenue > ANY ( SELECT revenue FROM sales WHERE region = 'Sylhet' );

-- B: > ALL
SELECT
    *
FROM sales
WHERE revenue > ALL ( SELECT revenue FROM sales WHERE region = 'Sylhet' );

-- Question 2
-- > ANY equivalent to > MIN
SELECT
    *
FROM sales
WHERE revenue > ( SELECT MIN(revenue) FROM sales WHERE region = 'Sylhet' );

-- > ALL equivalent to > MAX
SELECT
    *
FROM sales
WHERE revenue > ( SELECT MAX(revenue) FROM sales WHERE region = 'Sylhet' );

-- Question 3
-- A: ANY
SELECT
    COUNT(*)
FROM sales
WHERE revenue > ANY ( SELECT revenue FROM sales WHERE category = 'Stationery' );

-- B: ALL
SELECT
    COUNT(*)
FROM sales
WHERE revenue > ALL ( SELECT revenue FROM sales WHERE category = 'Stationery' );

-- Question 4
-- A: < ANY
SELECT
    *
FROM sales
WHERE revenue < ANY ( SELECT revenue FROM sales WHERE region = 'Sylhet' );

SELECT
    *
FROM sales
WHERE revenue < ( SELECT MAX(revenue) FROM sales WHERE region = 'Sylhet' );

-- B: < ALL
SELECT
    *
FROM sales
WHERE revenue < ALL ( SELECT revenue FROM sales WHERE region = 'Sylhet' );

SELECT
    *
FROM sales
WHERE revenue < ( SELECT MIN(revenue) FROM sales WHERE region = 'Sylhet' );
