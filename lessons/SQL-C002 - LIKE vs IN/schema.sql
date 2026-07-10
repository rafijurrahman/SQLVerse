-- ============================================================
-- SQL Master
-- Lesson: SQL-C002 — LIKE vs IN
-- Schema: Retail Sales
-- Business Scenario: LIKE vs IN
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
(1,  'Rahim',   'Uddin',   'rahim@email.com',   '01711-001', 'Dhaka'),
(2,  'Fatema',  'Rahman',  'fatema@email.com',  '01811-002', 'Chittagong'),
(3,  'Karim',   'Molla',   'karim@email.com',   '01911-003', 'Dhaka'),
(4,  'Nasrin',  'Akter',   'nasrin@email.com',  '01611-004', 'Sylhet'),
(5,  'Milon',   'Ahmed',   'milon@email.com',   '01711-005', 'Rajshahi'),
(6,  'Tania',   'Rahman',  'tania@email.com',   '01811-006', 'Dhaka'),
(7,  'Rubel',   'Islam',   'rubel@email.com',   '01911-007', 'Barisal'),
(8,  'Sumaiya', 'Khatun',  'sumaiya@email.com', '01611-008', 'Dhaka'),
(9,  'Farhan',  'Ali',     'farhan@email.com',  '01711-009', 'Khulna'),
(10, 'Mitu',    'Pal',     'mitu@email.com',    '01811-010', 'Rangpur');
