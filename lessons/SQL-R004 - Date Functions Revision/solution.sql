-- ============================================================
-- SQL Master
-- Lesson: SQL-R004 — Date Functions Revision
-- ============================================================

-- Question 1
SELECT
    appointment_id,
    patient_name,
    YEAR(appointment_date) AS app_year,
    MONTH(appointment_date) AS app_month,
    DAY(appointment_date) AS app_day,
    DATE_FORMAT(appointment_date, '%d %M %Y') AS "Formatted Date"
FROM appointments;

-- Question 2
SELECT
    admission_id,
    patient_name,
    DATEDIFF(discharge_date, admission_date) AS "Days Stayed",
    DATE_ADD(discharge_date, INTERVAL 14 DAY) AS "Follow Up Date"
FROM admissions
WHERE discharge_date IS NOT NULL;

-- Question 3
SELECT
    patient_name,
    MONTH(appointment_date) AS "Month",
    HOUR(appointment_time) AS "Hour"
FROM appointments
WHERE status = 'Completed' AND appointment_date BETWEEN '2024-01-01' AND '2024-03-31';

-- Question 4
SELECT
    ward,
    AVG(DATEDIFF(discharge_date, admission_date)) AS avg_stay
FROM admissions
WHERE discharge_date IS NOT NULL
GROUP BY ward
ORDER BY avg_stay DESC;
