-- ============================================================
-- SQL Master
-- Lesson: SQL-114 — INTERSECT
-- ============================================================

-- Question 1
SELECT DISTINCT
    d.tracking_number
FROM domestic_shipments d
INNER JOIN returned_shipments r ON d.tracking_number = r.tracking_number;

-- Question 2
SELECT DISTINCT
    tracking_number
FROM domestic_shipments
WHERE tracking_number IN ( SELECT tracking_number FROM returned_shipments );

-- Question 3
SELECT
    d.tracking_number,
    r.return_reason
FROM domestic_shipments d
INNER JOIN returned_shipments r ON d.tracking_number = r.tracking_number;

-- Question 4
SELECT DISTINCT
    weight_kg
FROM warehouses_dhaka
WHERE weight_kg IN ( SELECT weight_kg FROM warehouses_ctg );
