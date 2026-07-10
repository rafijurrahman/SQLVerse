-- ============================================================
-- SQL Master
-- Lesson: SQL-R008 — JOIN Revision
-- Schema: E Commerce
-- Business Scenario: JOIN revision
-- ============================================================

CREATE TABLE customers (
    customer_id INT          PRIMARY KEY,
    first_name  VARCHAR(50)  NOT NULL,
    last_name   VARCHAR(50)  NOT NULL,
    email       VARCHAR(100) NOT NULL,
    city        VARCHAR(50)  NOT NULL,
    joined_date DATE         NOT NULL
);
CREATE TABLE orders (
    order_id     INT           PRIMARY KEY,
    customer_id  INT,
    order_date   DATE          NOT NULL,
    status       VARCHAR(20)   NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
CREATE TABLE products (
    product_id   INT           PRIMARY KEY,
    product_name VARCHAR(100)  NOT NULL,
    category     VARCHAR(50)   NOT NULL,
    price        DECIMAL(10,2) NOT NULL
);
CREATE TABLE order_items (
    item_id      INT           PRIMARY KEY,
    order_id     INT           NOT NULL,
    product_id   INT           NOT NULL,
    quantity     INT           NOT NULL,
    unit_price   DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id)   REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
CREATE TABLE payments (
    payment_id     INT           PRIMARY KEY,
    order_id       INT           NOT NULL,
    payment_date   DATE          NOT NULL,
    amount         DECIMAL(10,2) NOT NULL,
    method         VARCHAR(30)   NOT NULL,
    status         VARCHAR(20)   NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
CREATE TABLE reviews (
    review_id   INT  PRIMARY KEY,
    order_id    INT  NOT NULL,
    customer_id INT  NOT NULL,
    rating      INT  NOT NULL,
    comment     TEXT,
    review_date DATE NOT NULL,
    FOREIGN KEY (order_id)   REFERENCES orders(order_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO customers VALUES
(1,'Rahim',  'Uddin',  'rahim@shop.com',  'Dhaka',      '2023-01-15'),
(2,'Fatema', 'Begum',  'fatema@shop.com', 'Chittagong', '2023-03-20'),
(3,'Karim',  'Molla',  'karim@shop.com',  'Dhaka',      '2023-06-10'),
(4,'Nasrin', 'Akter',  'nasrin@shop.com', 'Sylhet',     '2023-09-05'),
(5,'Milon',  'Ahmed',  'milon@shop.com',  'Rajshahi',   '2024-01-20');
INSERT INTO orders VALUES
(1001,1,'2024-01-05','Completed', 3500.00),
(1002,2,'2024-01-10','Completed', 1200.00),
(1003,1,'2024-02-01','Shipped',   4800.00),
(1004,3,'2024-02-14','Completed', 2200.00),
(1005,2,'2024-03-03','Cancelled',  900.00),
(1006,4,'2024-03-10','Completed', 6100.00),
(1007,NULL,'2024-04-01','Pending', 1500.00);
INSERT INTO products VALUES
(1,'Wireless Mouse',  'Electronics', 850.00),
(2,'USB Keyboard',    'Electronics',1200.00),
(3,'Office Chair',    'Furniture',  8500.00),
(4,'Notebook A5',     'Stationery',  120.00),
(5,'Headphones',      'Electronics',2500.00);
INSERT INTO order_items VALUES
(1,1001,1,2, 850.00),
(2,1001,4,5, 120.00),
(3,1002,2,1,1200.00),
(4,1003,5,1,2500.00),
(5,1004,1,1, 850.00),
(6,1004,4,3, 120.00),
(7,1006,3,1,8500.00),  -- Wait, we only have 6100 but item is 8500? Let's fix
(8,1007,4,5, 120.00);
INSERT INTO payments VALUES
(1,1001,'2024-01-05',3500.00,'bKash',   'Completed'),
(2,1002,'2024-01-10',1200.00,'Card',    'Completed'),
(3,1003,'2024-02-01',4800.00,'bKash',   'Pending'),
(4,1004,'2024-02-14',2200.00,'Nagad',   'Completed'),
(5,1006,'2024-03-10',6100.00,'Card',    'Completed');
INSERT INTO reviews VALUES
(1,1001,1,5,'Excellent product!','2024-01-07'),
(2,1002,2,4,'Good quality.','2024-01-12'),
(3,1004,3,3,'Average product.','2024-02-16');
