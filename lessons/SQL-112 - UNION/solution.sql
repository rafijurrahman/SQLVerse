-- ============================================================
-- SQL Master
-- Lesson: SQL-112 — UNION
-- ============================================================

-- Question 1
SELECT
    tracking_number,
    shipment_date
FROM domestic_shipments
UNION 
SELECT
    tracking_number,
    shipment_date
FROM international_shipments;

-- Question 2
SELECT
    tracking_number,
    status,
    shipment_date
FROM domestic_shipments
WHERE status = 'Delivered'
UNION 
SELECT
    tracking_number,
    status,
    shipment_date
FROM international_shipments
WHERE status = 'Delivered';

-- Question 3
SELECT
    tracking_number,
    weight_kg,
    status,
    shipment_date,
    'Domestic' AS shipment_type
FROM domestic_shipments
UNION 
SELECT
    tracking_number,
    weight_kg,
    status,
    shipment_date,
    'International' AS shipment_type
FROM international_shipments;

-- Question 4
SELECT
    tracking_number,
    weight_kg,
    status
FROM domestic_shipments
UNION 
SELECT
    tracking_number,
    weight_kg,
    status
FROM international_shipments
UNION 
SELECT
    tracking_number,
    weight_kg,
    status
FROM returned_shipments;
