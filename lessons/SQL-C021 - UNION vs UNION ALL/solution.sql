-- ============================================================
-- SQL Master
-- Lesson: SQL-C021 — UNION vs UNION ALL
-- ============================================================

-- Question 1
SELECT
    tracking_number
FROM domestic_shipments
UNION 
SELECT
    tracking_number
FROM international_shipments;

SELECT
    tracking_number
FROM domestic_shipments
UNION ALL 
SELECT
    tracking_number
FROM international_shipments;

-- Question 2
SELECT
    tracking_number,
    status
FROM domestic_shipments
WHERE status = 'Delivered'
UNION 
SELECT
    tracking_number,
    status
FROM international_shipments
WHERE status = 'Delivered';

SELECT
    tracking_number,
    status
FROM domestic_shipments
WHERE status = 'Delivered'
UNION ALL 
SELECT
    tracking_number,
    status
FROM international_shipments
WHERE status = 'Delivered';

-- Question 3
-- A:
UNION for unique tracking numbers
SELECT
    tracking_number
FROM domestic_shipments
UNION 
SELECT
    tracking_number
FROM international_shipments;

-- B:
UNION ALL for total shipment events including repeats
SELECT
    tracking_number
FROM domestic_shipments
UNION ALL 
SELECT
    tracking_number
FROM international_shipments;

-- Question 4
SELECT
    COUNT(*)
FROM ( SELECT tracking_number FROM domestic_shipments UNION SELECT tracking_number FROM international_shipments ) AS union_version;

SELECT
    COUNT(*)
FROM ( SELECT tracking_number FROM domestic_shipments UNION ALL SELECT tracking_number FROM international_shipments ) AS union_all_version;
