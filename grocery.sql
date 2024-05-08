DROP TABLE IF EXISTS CUSTOMER;
DROP TABLE IF EXISTS PRODCUT;
DROP TABLE IF EXISTS EMPLOYEE;

CREATE TABLE Customer(
customer_id INT PRIMARY KEY NOT NULL,
first_name VARCHAR(45),
last_name VARCHAR(45),
phone_number INT,
email_address VARCHAR(45)
);
CREATE TABLE Employee(
employee_id INT PRIMARY KEY NOT NULL,
First_name VARCHAR(45),
last_name VARCHAR(45),
phone_number INT,
email_address VARCHAR(45),
dob DATE,
manager_id INT
);

CREATE TABLE Product(
product_id INT PRIMARY KEY NOT NULL,
name VARCHAR(45), 
description VARCHAR(45), 
price DECIMAL(10,3),
weight DECIMAL (10,2),
type VARCHAR(45), 
quantity INT,
customer_id int
);


INSERT INTO Customer(customer_id,first_name, last_name, phone_number, email_address) VALUES ('101','Joe', 'Jackson', '704908890','joejackson99@gmail.com');
INSERT INTO Customer(customer_id,first_name, last_name, phone_number, email_address) VALUES ('102','Mary', 'Smith', '980748232','mary832@yahoo.com');
INSERT INTO Customer(customer_id,first_name, last_name, phone_number, email_address) VALUES ('103','Johhny', 'Freeman', '336284053','jjohnnyboy324@gmail.com');
INSERT INTO Customer(customer_id,first_name, last_name, phone_number, email_address) VALUES ('104','Blake', 'Jones', '980559285','jonesb11@gmail.com');
INSERT INTO Customer(customer_id,first_name, last_name, phone_number, email_address) VALUES ('105','David', 'Miller', '704871994','mills324@hotmail.com');


 INSERT INTO Employee(employee_id,First_name, last_name, phone_number, email_address, dob, manager_id) VALUES ('201','Suzy', 'West', '980489247','suzywest139@gmail.com','1998-11-09', NULL);
 INSERT INTO Employee(employee_id,First_name, last_name, phone_number, email_address, dob, manager_id) VALUES ('202','Mark', 'Grey', '704729492','markgrey92@gmail.com','1989-04-25', '202');
 INSERT INTO Employee(employee_id,First_name, last_name, phone_number, email_address, dob, manager_id) VALUES ('203','Lexi', 'Sloan', '336948274','lexiloan22@yahoo.com','2000-08-15', NULL);
 INSERT INTO Employee(employee_id,First_name, last_name, phone_number, email_address, dob, manager_id) VALUES ('204','Devin', 'Park', '704228405','devinpark04@gmail.com','1994-01-01', '203');
 INSERT INTO Employee(employee_id,First_name, last_name, phone_number, email_address, dob, manager_id) VALUES ('205','Mark', 'Lee', '980384923','leemark0339@gmail.com','1999-10-31', NULL);
 
 INSERT INTO Product(product_id, name, description, price, weight, type, quantity, customer_id) VALUES ('301', 'Apple', 'A round fruit with red or green skin', '0.84', '0.34', 'Fruit', '120', '102');
 INSERT INTO Product(product_id, name, description, price, weight, type, quantity, customer_id) VALUES ('302', 'Orage', 'A round fruit with zety smell ', '0.88', '0.60', 'Fruit', '90', '103');
 INSERT INTO Product(product_id, name, description, price, weight, type, quantity, customer_id) VALUES ('303', 'Cucmber', 'Firm and round with dark green skin', '0.30', '0.50', 'Vegatable', '20', '104');
 INSERT INTO Product(product_id, name, description, price, weight, type, quantity, customer_id) VALUES ('304', 'Mango', 'a round fruit with red or green skin', '0.84', '0.34', 'Fruit', '120', '105');
 INSERT INTO Product(product_id, name, description, price, weight, type, quantity, customer_id) VALUES ('305', 'Corn', 'Firm on the outside and juicy inside', '0.50', '2.60', 'Vegatable', '45', '101');
 
SELECT 
    product_id, name, quantity
FROM
    Product
WHERE
    price > (SELECT 
            AVG(price)
        FROM
            Product);
 
 SELECT 
    *
FROM
    Employee
WHERE
    last_name = 'Grey' OR 'Marsh' OR 'Sloan';
    
SELECT 
    *
FROM
    CUSTOMER
WHERE
    customer_id >= 102;
 
SET FOREIGN_KEY_CHECKS = 0;

UPDATE Product SET quantity = 100 WHERE product_id = 305;
UPDATE Employee SET manager_id = 204 WHERE employee_id = 204;
UPDATE Product SET quantity = 45 WHERE product_id = 302;
 
 
 CREATE INDEX Customer_first_name_last_name_idx
 ON Customer (last_name, first_name);
 CREATE INDEX name ON Product (name);
 
 
 SET FOREIGN_KEY_CHECKS = 1;
 
 
 
