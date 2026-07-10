-- ============================================================
-- SQL Master
-- Lesson: SQL-113 — UNION ALL
-- Schema: Logistics
-- Business Scenario: UNION ALL
-- ============================================================

CREATE TABLE domestic_shipments (
    shipment_id     INT          PRIMARY KEY,
    tracking_number VARCHAR(20)  NOT NULL,
    sender_city     VARCHAR(50)  NOT NULL,
    receiver_city   VARCHAR(50)  NOT NULL,
    weight_kg       DECIMAL(8,2) NOT NULL,
    status          VARCHAR(20)  NOT NULL,
    shipment_date   DATE         NOT NULL
);
CREATE TABLE international_shipments (
    shipment_id     INT          PRIMARY KEY,
    tracking_number VARCHAR(20)  NOT NULL,
    origin_country  VARCHAR(50)  NOT NULL,
    dest_country    VARCHAR(50)  NOT NULL,
    weight_kg       DECIMAL(8,2) NOT NULL,
    status          VARCHAR(20)  NOT NULL,
    shipment_date   DATE         NOT NULL
);
CREATE TABLE returned_shipments (
    shipment_id     INT          PRIMARY KEY,
    tracking_number VARCHAR(20)  NOT NULL,
    origin_city     VARCHAR(50)  NOT NULL,
    return_reason   VARCHAR(100) NOT NULL,
    weight_kg       DECIMAL(8,2) NOT NULL,
    status          VARCHAR(20)  NOT NULL,
    return_date     DATE         NOT NULL
);
CREATE TABLE warehouses_dhaka (
    parcel_id   INT          PRIMARY KEY,
    tracking_no VARCHAR(20)  NOT NULL,
    city        VARCHAR(50)  NOT NULL DEFAULT 'Dhaka',
    weight_kg   DECIMAL(8,2) NOT NULL,
    arrival_date DATE         NOT NULL
);
CREATE TABLE warehouses_ctg (
    parcel_id   INT          PRIMARY KEY,
    tracking_no VARCHAR(20)  NOT NULL,
    city        VARCHAR(50)  NOT NULL DEFAULT 'Chittagong',
    weight_kg   DECIMAL(8,2) NOT NULL,
    arrival_date DATE         NOT NULL
);
INSERT INTO domestic_shipments VALUES
(1,'BD-1001','Dhaka',      'Chittagong', 2.5,'Delivered','2024-01-05'),
(2,'BD-1002','Rajshahi',   'Dhaka',      1.2,'Delivered','2024-01-10'),
(3,'BD-1003','Dhaka',      'Sylhet',     3.0,'In Transit','2024-02-01'),
(4,'BD-1004','Chittagong', 'Dhaka',      0.8,'Delivered','2024-02-15'),
(5,'BD-1005','Dhaka',      'Barisal',    5.0,'Returned',  '2024-03-01'),
(6,'BD-1001','Dhaka',      'Chittagong', 2.5,'Delivered','2024-03-10');
INSERT INTO international_shipments VALUES
(1,'INT-2001','Bangladesh','UAE',        4.2,'Delivered','2024-01-08'),
(2,'INT-2002','Bangladesh','USA',       12.0,'In Transit','2024-01-15'),
(3,'INT-2003','Bangladesh','UK',         3.5,'Delivered','2024-02-05'),
(4,'INT-2004','Bangladesh','Saudi Arabia',6.0,'Delivered','2024-02-20'),
(5,'INT-2005','Bangladesh','UAE',        2.8,'Returned', '2024-03-01');
INSERT INTO returned_shipments VALUES
(1,'BD-1005','Dhaka','Address Not Found', 5.0,'Returned','2024-03-08'),
(2,'INT-2005','Bangladesh','Customs Rejected',2.8,'Returned','2024-03-10'),
(3,'BD-2006','Chittagong','Recipient Absent', 1.5,'Returned','2024-03-15');
INSERT INTO warehouses_dhaka VALUES
(1,'WH-D001','Dhaka',3.2,'2024-01-10'),
(2,'WH-D002','Dhaka',1.8,'2024-01-20'),
(3,'WH-D003','Dhaka',4.5,'2024-02-05');
INSERT INTO warehouses_ctg VALUES
(1,'WH-C001','Chittagong',2.1,'2024-01-12'),
(2,'WH-C002','Chittagong',3.3,'2024-01-25'),
(3,'WH-C003','Chittagong',5.0,'2024-02-10');
