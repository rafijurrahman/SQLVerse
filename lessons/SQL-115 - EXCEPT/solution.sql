-- ============================================================
-- SQL Master
-- Lesson: SQL-115 — EXCEPT
-- ============================================================

-- Question 1
SELECT DISTINCT
    tracking_number
FROM domestic_shipments
WHERE tracking_number NOT IN ( SELECT tracking_number FROM returned_shipments WHERE tracking_number IS NOT NULL );

-- Question 2
SELECT DISTINCT
    tracking_number,
    status
FROM international_shipments
WHERE tracking_number NOT IN ( SELECT tracking_number FROM returned_shipments WHERE tracking_number IS NOT NULL );

-- Question 3
SELECT DISTINCT
    tracking_number
FROM domestic_shipments
WHERE status = 'Delivered' AND tracking_number NOT IN ( SELECT tracking_number FROM returned_shipments WHERE tracking_number IS NOT NULL );

-- Question 4
SELECT DISTINCT
    d.tracking_number
FROM domestic_shipments d
LEFT JOIN returned_shipments r ON d.tracking_number = r.tracking_number
WHERE r.tracking_number IS NULL;
