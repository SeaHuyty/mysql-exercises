CREATE DATABASE sale_management_system;
USE sale_management_system;

CREATE TABLE sales (
	sales_number INT PRIMARY KEY,
    sales_date DATE,
    customer_code VARCHAR(10)
);

CREATE TABLE sales_detail (
	sales_number INT,
    product_code VARCHAR(10),
    quantity INT NOT NULL CHECK (quantity > 10),
    PRIMARY KEY (sales_number, product_code),
    FOREIGN KEY (sales_number) REFERENCES sales (sales_number)
);

CREATE TABLE product (
	product_code VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(40),
    unit_price DECIMAL NOT NULL CHECK (unit_price >= 0)
);

CREATE TABLE sales_staff (
	sales_staff_code VARCHAR(10) PRIMARY KEY,
    sales_staff_name VARCHAR(30),
    phone_number VARCHAR(15),
    email VARCHAR(30)
);

CREATE TABLE customer (
	customer_code VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(40),
    customer_address VARCHAR(60),
    phone_number VARCHAR(15),
    sales_staff_code VARCHAR(10),
    FOREIGN KEY (sales_staff_code) REFERENCES sales_staff (sales_staff_code)
);

ALTER TABLE sales
	ADD CONSTRAINT fk_customer_code FOREIGN KEY (customer_code) REFERENCES customer (customer_code);