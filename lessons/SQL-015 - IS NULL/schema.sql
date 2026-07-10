-- ============================================================
-- SQL Master
-- Lesson: SQL-015 — IS NULL
-- Schema: Retail Sales
-- Business Scenario: Missing phone numbers
-- ============================================================

CREATE TABLE customers (
    customer_id INT          PRIMARY KEY,
    first_name  VARCHAR(50)  NOT NULL,
    last_name   VARCHAR(50)  NOT NULL,
    email       VARCHAR(100),
    phone       VARCHAR(20),
    city        VARCHAR(50)
);
INSERT INTO customers VALUES
(1,  'Rahim',   'Uddin',   'rahim@email.com',   '01711-001', 'Dhaka'),
(2,  'Fatema',  'Rahman',  'fatema@email.com',  NULL,        'Chittagong'),
(3,  'Karim',   'Molla',   NULL,                '01911-003', 'Dhaka'),
(4,  'Nasrin',  'Akter',   'nasrin@email.com',  NULL,        'Sylhet'),
(5,  'Milon',   'Ahmed',   NULL,                NULL,        'Rajshahi'),
(6,  'Tania',   'Rahman',  'tania@email.com',   '01811-006', NULL),
(7,  'Rubel',   'Islam',   'rubel@email.com',   NULL,        'Barisal'),
(8,  'Sumaiya', 'Khatun',  NULL,                '01611-008', 'Dhaka'),
(9,  'Farhan',  'Ali',     'farhan@email.com',  '01711-009', NULL),
(10, 'Mitu',    'Pal',     NULL,                NULL,        'Rangpur');
