-- ============================================================
-- SQL Master
-- Lesson: SQL-044 — NOW()
-- ============================================================

-- Question 1
SELECT
    *,
    NOW() AS "Current DateTime"
FROM appointments;

-- Question 2
SELECT
    *
FROM appointments
WHERE appointment_date < DATE(NOW());

-- Question 3
SELECT
    patient_name,
    doctor_name,
    appointment_date,
    NOW() AS "Report Run At"
FROM appointments
WHERE status = 'Scheduled';

-- Question 4
SELECT
    patient_name,
    appointment_date,
    DATEDIFF(NOW(), appointment_date) AS "Days Since Appointment"
FROM appointments
ORDER BY DATEDIFF(NOW(), appointment_date) ASC;
