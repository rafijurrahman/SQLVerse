-- ============================================================
-- SQL Master
-- Lesson: SQL-051 — DATE_ADD()
-- ============================================================

-- Question 1
SELECT
    DATE_ADD(appointment_date, INTERVAL 7 DAY) AS "Follow Up Date"
FROM appointments;

-- Question 2
SELECT
    DATE_ADD(appointment_date, INTERVAL 1 MONTH) AS "Next Checkup"
FROM appointments
WHERE status = 'Completed';

-- Question 3
SELECT
    patient_name,
    appointment_date,
    DATE_ADD(appointment_date, INTERVAL 14 DAY) AS "Follow Up Date"
FROM appointments
WHERE status = 'Completed';

-- Question 4
SELECT
    DATE_ADD(appointment_date, INTERVAL CASE WHEN specialty = 'Cardiology' THEN 30 ELSE 14 END DAY) AS "Next Visit"
FROM appointments;
