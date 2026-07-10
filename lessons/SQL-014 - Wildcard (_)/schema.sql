-- ============================================================
-- SQL Master
-- Lesson: SQL-014 — Wildcard (_)
-- Schema: Retail Sales
-- Business Scenario: Single character pattern
-- ============================================================

CREATE TABLE customers (
    customer_id INT          PRIMARY KEY,
    first_name  VARCHAR(50)  NOT NULL,
    last_name   VARCHAR(50)  NOT NULL,
    email       VARCHAR(100) NOT NULL,
    phone       VARCHAR(20),
    city        VARCHAR(50)  NOT NULL
);
INSERT INTO customers VALUES
(1,  'Ra',      'Uddin',   'ra@shop.com',    '01711-001', 'Dhaka'),
(2,  'Mitu',    'Miah',    'mitu@shop.com',  '01811-002', 'Dhaka'),
(3,  'Mina',    'Das',     'mina@shop.com',  '01911-003', 'Chittagong'),
(4,  'Sara',    'Ahmed',   'sara@shop.com',  '01611-004', 'Sylhet'),
(5,  'Sana',    'Islam',   'sana@shop.com',  '01711-005', 'Rajshahi'),
(6,  'Rina',    'Khatun',  'rina@shop.com',  '01811-006', 'Dhaka'),
(7,  'Rita',    'Begum',   'rita@shop.com',  '01911-007', 'Barisal'),
(8,  'Tonu',    'Roy',     'tonu@shop.com',  '01611-008', 'Khulna'),
(9,  'Lima',    'Akter',   'lima@shop.com',  '01711-009', 'Dhaka'),
(10, 'Ritu',    'Sultana', 'ritu@shop.com',  '01811-010', 'Rangpur'),
(11, 'Nasrin',  'Parveen', 'nasrin@shop.com','01911-011', 'Dhaka'),
(12, 'Tamanna', 'Haque',   'tamanna@shop.com','01611-012','Sylhet');
