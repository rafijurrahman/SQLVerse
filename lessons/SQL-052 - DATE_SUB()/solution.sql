-- ============================================================
-- SQL Master
-- Lesson: SQL-052 — DATE_SUB()
-- ============================================================

-- Question 1
SELECT
    appointment_date,
    DATE_SUB(appointment_date, INTERVAL 7 DAY) AS "Previous Week"
FROM appointments;

-- Question 2
SELECT
    *
FROM appointments
WHERE appointment_date >= DATE_SUB('2024-05-02', INTERVAL 90 DAY);

-- Question 3
SELECT
    patient_name,
    appointment_date,
    DATE_SUB(appointment_date, INTERVAL 3 DAY) AS "Reminder Date"
FROM appointments
WHERE status = 'Scheduled';

-- Question 4
SELECT
    patient_name,
    appointment_date,
    DATE_SUB(appointment_date, INTERVAL 1 MONTH) AS "1 Month Before",
    DATE_ADD(appointment_date, INTERVAL 1 MONTH) AS "1 Month After"
FROM appointments
ORDER BY appointment_date;
