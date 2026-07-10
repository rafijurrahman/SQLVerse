-- ============================================================
-- SQL Master
-- Lesson: SQL-045 — YEAR()
-- Schema: Hospital Management
-- Business Scenario: Admission year
-- ============================================================

CREATE TABLE admissions (
    admission_id   INT          PRIMARY KEY,
    patient_name   VARCHAR(100) NOT NULL,
    doctor_name    VARCHAR(100) NOT NULL,
    ward           VARCHAR(50)  NOT NULL,
    admission_date DATETIME     NOT NULL,
    discharge_date DATETIME,
    diagnosis      VARCHAR(200) NOT NULL
);
INSERT INTO admissions VALUES
(1, 'Rahim Uddin',    'Dr. Karim',   'Cardiology', '2024-01-10 08:30:00', '2024-01-17 11:00:00', 'Hypertension'),
(2, 'Fatema Begum',   'Dr. Sultana', 'Maternity',  '2024-01-22 14:00:00', '2024-01-25 09:00:00', 'Normal Delivery'),
(3, 'Milon Ahmed',    'Dr. Karim',   'Cardiology', '2024-02-03 09:15:00', '2024-02-10 10:30:00', 'Heart Arrhythmia'),
(4, 'Nasrin Akter',   'Dr. Rahman',  'Neurology',  '2024-02-15 11:00:00', '2024-02-22 14:00:00', 'Migraine'),
(5, 'Farhan Ali',     'Dr. Hasan',   'Orthopedics','2024-03-05 10:00:00', '2024-03-12 09:00:00', 'Fracture Treatment'),
(6, 'Tania Rahman',   'Dr. Sultana', 'Maternity',  '2024-03-18 08:00:00', '2024-03-21 11:00:00', 'Caesarean Section'),
(7, 'Rubel Islam',    'Dr. Karim',   'Cardiology', '2024-04-02 07:30:00', '2024-04-09 12:00:00', 'Chest Pain'),
(8, 'Sumaiya Khatun', 'Dr. Rahman',  'Neurology',  '2024-04-14 09:00:00', '2024-04-20 10:00:00', 'Stroke Recovery'),
(9, 'Arif Hossain',   'Dr. Hasan',   'Orthopedics','2024-05-01 11:30:00', '2024-05-07 09:30:00', 'Knee Surgery'),
(10,'Mitu Pal',       'Dr. Sultana', 'Maternity',  '2024-05-15 08:00:00', NULL,                  'Under Treatment');
