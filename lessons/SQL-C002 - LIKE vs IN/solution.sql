-- ============================================================
-- SQL Master
-- Lesson: SQL-C002 — LIKE vs IN
-- ============================================================

-- Question 1
SELECT
    *
FROM customers
WHERE city LIKE 'D%';

SELECT
    *
FROM customers
WHERE city IN ('Dhaka', 'Sylhet', 'Barisal');

-- Question 2
SELECT
    *
FROM customers
WHERE email LIKE '%@email.com%';

SELECT
    *
FROM customers
WHERE first_name IN ('Rahim', 'Karim', 'Milon');

-- Question 3
-- (A) Using LIKE: find all customers
FROM cities that start WITH 'Ch'
SELECT
    *
FROM customers
WHERE city LIKE 'Ch%';

-- (B) Using IN: find all customers
FROM these exact cities: 'Dhaka', 'Chittagong', 'Khulna'
SELECT
    *
FROM customers
WHERE city IN ('Dhaka', 'Chittagong', 'Khulna');

-- Question 4
SELECT
    *
FROM customers
WHERE last_name LIKE '%man%';

-- Explanation:
-- LIKE should be used instead of IN WHEN you need to perform pattern matching OR partial string search rather than matching exact VALUES.
-- The IN operator requires specifying exact, discrete VALUES (e.g., last_name IN ('Rahman', 'Sulaiman')). 
-- Since we want to match any last name containing the substring 'man' (LIKE 'Rahman', 'Suleman', etc.) without knowing all the possible exact matches beforehand, IN cannot be used because it doesn't support wildcards OR partial matches.;
