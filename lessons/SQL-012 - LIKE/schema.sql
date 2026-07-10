-- ============================================================
-- SQL Master
-- Lesson: SQL-012 — LIKE
-- Schema: Retail Sales
-- Business Scenario: Customer name search
-- ============================================================

CREATE TABLE customers (
    customer_id INT          PRIMARY KEY,
    first_name  VARCHAR(50)  NOT NULL,
    last_name   VARCHAR(50)  NOT NULL,
    email       VARCHAR(100),
    phone       VARCHAR(20),
    city        VARCHAR(50)  NOT NULL
);
INSERT INTO customers VALUES
(1,  'Rahim',    'Uddin',    'rahim.uddin@email.com',    '01711-001', 'Dhaka'),
(2,  'Fatema',   'Rahman',   'fatema.r@email.com',       '01811-002', 'Chittagong'),
(3,  'Karim',    'Molla',    'karim.molla@email.com',    '01911-003', 'Dhaka'),
(4,  'Nasrin',   'Akter',    'nasrin.a@email.com',       '01611-004', 'Sylhet'),
(5,  'Rahman',   'Ali',      'rahman.ali@email.com',     '01711-005', 'Rajshahi'),
(6,  'Tania',    'Rahman',   'tania.r@email.com',        '01811-006', 'Dhaka'),
(7,  'Rubel',    'Islam',    'rubel.islam@email.com',    '01911-007', 'Barisal'),
(8,  'Sumaiya',  'Khatun',   'sumaiya.k@email.com',      '01611-008', 'Dhaka'),
(9,  'Farhan',   'Hossain',  'farhan.h@email.com',       '01711-009', 'Khulna'),
(10, 'Mitu',     'Rahman',   'mitu.r@email.com',         '01811-010', 'Rangpur');
