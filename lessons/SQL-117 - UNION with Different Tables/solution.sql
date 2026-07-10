-- ============================================================
-- SQL Master
-- Lesson: SQL-117 — UNION with Different Tables
-- ============================================================

-- Question 1
SELECT
    tracking_no,
    city,
    weight_kg,
    arrival_date
FROM warehouses_dhaka
UNION ALL 
SELECT
    tracking_no,
    city,
    weight_kg,
    arrival_date
FROM warehouses_ctg;

-- Question 2
SELECT
    city,
    tracking_no,
    arrival_date
FROM warehouses_dhaka
UNION 
SELECT
    city,
    tracking_no,
    arrival_date
FROM warehouses_ctg
ORDER BY arrival_date;

-- Question 3
SELECT
    SUM(weight_kg) AS total_weight
FROM ( SELECT weight_kg FROM warehouses_dhaka UNION ALL SELECT weight_kg FROM warehouses_ctg ) AS combined_inventory;

-- Question 4
SELECT
    source,
    COUNT(*) AS total_count,
    SUM(weight_kg) AS total_weight
FROM ( SELECT tracking_number, weight_kg, 'Domestic' AS source FROM domestic_shipments UNION ALL SELECT tracking_number, weight_kg, 'International' AS source FROM international_shipments UNION ALL SELECT tracking_no AS tracking_number, weight_kg, 'Warehouse Dhaka' AS source FROM warehouses_dhaka ) AS combined
GROUP BY source;
