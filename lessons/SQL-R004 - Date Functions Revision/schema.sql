-- ============================================================
-- SQL Master
-- Lesson: SQL-R004 — Date Functions Revision
-- Schema: Hospital Management
-- Business Scenario: Date revision
-- ============================================================

CREATE TABLE appointments (
    appointment_id   INT          PRIMARY KEY,
    patient_name     VARCHAR(100) NOT NULL,
    doctor_name      VARCHAR(100) NOT NULL,
    specialty        VARCHAR(50)  NOT NULL,
    appointment_date DATE         NOT NULL,
    appointment_time TIME         NOT NULL,
    status           VARCHAR(20)  NOT NULL
);
CREATE TABLE admissions (
    admission_id   INT          PRIMARY KEY,
    patient_name   VARCHAR(100) NOT NULL,
    doctor_name    VARCHAR(100) NOT NULL,
    ward           VARCHAR(50)  NOT NULL,
    admission_date DATETIME     NOT NULL,
    discharge_date DATETIME,
    diagnosis      VARCHAR(200) NOT NULL
);
INSERT INTO appointments VALUES
(1,'Rahim Uddin',  'Dr. Karim',  'Cardiology', '2024-01-15','09:00:00','Completed'),
(2,'Fatema Begum', 'Dr. Sultana','Gynecology', '2024-02-20','10:30:00','Completed'),
(3,'Milon Ahmed',  'Dr. Karim',  'Cardiology', '2024-03-05','08:45:00','Scheduled'),
(4,'Nasrin Akter', 'Dr. Rahman', 'Neurology',  '2024-04-14','14:00:00','Completed'),
(5,'Farhan Ali',   'Dr. Hasan',  'Orthopedics','2024-05-01','11:15:00','Cancelled');
INSERT INTO admissions VALUES
(1,'Rahim Uddin',  'Dr. Karim',  'Cardiology', '2024-01-10 08:30:00','2024-01-17 11:00:00','Hypertension'),
(2,'Fatema Begum', 'Dr. Sultana','Maternity',  '2024-02-22 14:00:00','2024-02-25 09:00:00','Normal Delivery'),
(3,'Milon Ahmed',  'Dr. Karim',  'Cardiology', '2024-03-03 09:15:00','2024-03-10 10:30:00','Heart Arrhythmia'),
(4,'Nasrin Akter', 'Dr. Rahman', 'Neurology',  '2024-04-15 11:00:00','2024-04-22 14:00:00','Migraine'),
(5,'Farhan Ali',   'Dr. Hasan',  'Orthopedics','2024-05-05 10:00:00',NULL,                 'Knee Surgery');
