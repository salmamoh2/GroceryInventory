CREATE TABLE Customer (
customer_id INT,
name VARCHAR(45),
phone_number INT,
email_address VARCHAR(45)
);
CREATE TABLE Employee (
employee INT,
name VARCHAR(45),
phone_number INT,
email_address VARCHAR(45),
dob DATE,
customer_id INT,
manager_id INT
);
