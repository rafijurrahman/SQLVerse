-- ============================================================
-- SQL Master
-- Lesson: SQL-118 — UNION Common Mistakes
-- ============================================================

-- Question 1
-- Wrong version
--
SELECT
    tracking_number,
    status
FROM domestic_shipments
UNION 
SELECT
    tracking_number
FROM international_shipments;

-- Correct version
SELECT
    tracking_number,
    status
FROM domestic_shipments
UNION 
SELECT
    tracking_number,
    status
FROM international_shipments;

-- Question 2
-- Wrong version
--
SELECT
    tracking_number
FROM domestic_shipments
ORDER BY tracking_number
UNION 
SELECT
    tracking_number
FROM international_shipments;

-- Correct version
SELECT
    tracking_number
FROM domestic_shipments
UNION 
SELECT
    tracking_number
FROM international_shipments
ORDER BY tracking_number;

-- Question 3
-- Wrong version
--
SELECT
    weight_kg
FROM domestic_shipments
UNION 
SELECT
    receiver_city
FROM domestic_shipments;

-- Correct version
SELECT
    weight_kg
FROM domestic_shipments
UNION 
SELECT
    weight_kg
FROM international_shipments;

-- Question 4
SELECT
    tracking_number,
    NULL AS origin_country,
    receiver_city AS destination
FROM domestic_shipments
UNION 
SELECT
    tracking_number,
    origin_country,
    dest_country AS destination
FROM international_shipments;
