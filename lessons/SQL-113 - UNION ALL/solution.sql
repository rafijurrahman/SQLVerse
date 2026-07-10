-- ============================================================
-- SQL Master
-- Lesson: SQL-113 — UNION ALL
-- ============================================================

-- Question 1
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
    'Domestic' AS source
FROM domestic_shipments
UNION ALL 
SELECT
    tracking_number,
    'International' AS source
FROM international_shipments;

-- Question 3
SELECT
    'UNION ALL' AS type,
    COUNT(*) AS total_count
FROM ( SELECT tracking_number FROM domestic_shipments UNION ALL SELECT tracking_number FROM international_shipments ) AS combined_all
UNION ALL 
SELECT
    'UNION' AS type,
    COUNT(*) AS total_count
FROM ( SELECT tracking_number FROM domestic_shipments UNION SELECT tracking_number FROM international_shipments ) AS combined_unique;

-- Question 4
SELECT
    SUM(weight_kg) AS total_weight
FROM ( SELECT weight_kg FROM domestic_shipments UNION ALL SELECT weight_kg FROM international_shipments UNION ALL SELECT weight_kg FROM returned_shipments ) AS all_shipments;
