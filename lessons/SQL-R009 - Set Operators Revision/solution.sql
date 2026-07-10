-- ============================================================
-- SQL Master
-- Lesson: SQL-R009 — Set Operators Revision
-- ============================================================

-- Question 1
-- A:
UNION 
SELECT
    tracking_number
FROM domestic_shipments
UNION 
SELECT
    tracking_number
FROM international_shipments;

-- B:
UNION ALL 
SELECT
    tracking_number
FROM domestic_shipments
UNION ALL 
SELECT
    tracking_number
FROM international_shipments;

-- C: Row counts comparison
SELECT
    (
    SELECT
        COUNT(*)
    FROM ( SELECT tracking_number FROM domestic_shipments UNION SELECT tracking_number FROM international_shipments ) AS u
) AS union_count,
    (
    SELECT
        COUNT(*)
    FROM ( SELECT tracking_number FROM domestic_shipments UNION ALL SELECT tracking_number FROM international_shipments ) AS ua
) AS union_all_count;

-- Question 2
-- Simulate
INTERSECT 
SELECT DISTINCT
    d.tracking_number
FROM domestic_shipments d
INNER JOIN returned_shipments r ON d.tracking_number = r.tracking_number;

-- Simulate
EXCEPT 
SELECT DISTINCT
    d.tracking_number
FROM domestic_shipments d
LEFT JOIN returned_shipments r ON d.tracking_number = r.tracking_number
WHERE r.tracking_number IS NULL;

-- Question 3
-- A: All unique delivered shipments
SELECT
    tracking_number
FROM domestic_shipments
WHERE status = 'Delivered'
UNION 
SELECT
    tracking_number
FROM international_shipments
WHERE status = 'Delivered';

-- B: Total shipments per source
SELECT
    source,
    COUNT(*) AS shipment_count
FROM ( SELECT 'Domestic' AS source, tracking_number FROM domestic_shipments UNION ALL SELECT 'International' AS source, tracking_number FROM international_shipments ) AS combined
GROUP BY source;

-- Question 4
SELECT
    source,
    COUNT(*) AS total_parcels,
    SUM(weight_kg) AS total_weight
FROM ( SELECT 'Domestic' AS source, tracking_number, weight_kg FROM domestic_shipments UNION ALL SELECT 'International' AS source, tracking_number, weight_kg FROM international_shipments UNION ALL SELECT 'Returned' AS source, tracking_number, weight_kg FROM returned_shipments UNION ALL SELECT 'Warehouse Dhaka' AS source, tracking_no AS tracking_number, weight_kg FROM warehouses_dhaka UNION ALL SELECT 'Warehouse CTG' AS source, tracking_no AS tracking_number, weight_kg FROM warehouses_ctg ) AS combined
GROUP BY source;
