-- ============================================================
-- SQL Master
-- Lesson: SQL-116 — UNION with ORDER BY
-- ============================================================

-- Question 1
SELECT
    tracking_number
FROM domestic_shipments
UNION 
SELECT
    tracking_number
FROM international_shipments
ORDER BY tracking_number;

-- Question 2
SELECT
    tracking_number,
    shipment_date,
    'Domestic' AS source
FROM domestic_shipments
UNION 
SELECT
    tracking_number,
    shipment_date,
    'International' AS source
FROM international_shipments
ORDER BY source, shipment_date;

-- Question 3
SELECT
    tracking_number,
    shipment_date,
    status
FROM domestic_shipments
WHERE status = 'Delivered'
UNION 
SELECT
    tracking_number,
    shipment_date,
    status
FROM international_shipments
WHERE status = 'Delivered'
ORDER BY shipment_date ASC;

-- Question 4
SELECT
    tracking_number,
    status,
    'Domestic' AS source
FROM domestic_shipments
UNION 
SELECT
    tracking_number,
    status,
    'International' AS source
FROM international_shipments
UNION 
SELECT
    tracking_number,
    status,
    'Returned' AS source
FROM returned_shipments
ORDER BY CASE WHEN status = 'Delivered' THEN 1 WHEN status = 'IN Transit' THEN 2 ELSE 3 END;
