CREATE DATABASE mail_order;
USE mail_order;

CREATE TABLE employee (
	ssn VARCHAR(9) PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    zip VARCHAR(15) NOT NULL
);

CREATE TABLE customer (
	customer_number VARCHAR(9) PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    zip VARCHAR(15) NOT NULL
);

CREATE TABLE customer_order (
	order_number VARCHAR(10) PRIMARY KEY,
    receipt_date DATE NOT NULL,
    expected_date DATE,
    actual_date DATE
);

CREATE TABLE part (
	part_number VARCHAR(10) PRIMARY KEY,
    part_name VARCHAR(40) NOT NULL,
    price DECIMAL(10, 2) NOT NULL CHECK (price >= 0),
    quantity INT NOT NULL CHECK (quantity >= 0)
);

CREATE TABLE orders (
	order_number VARCHAR(10) NOT NULL,
    part_number VARCHAR(10) NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    PRIMARY KEY (order_number, part_number),
    FOREIGN KEY (order_number) REFERENCES customer_order (order_number) ON DELETE CASCADE,
	FOREIGN KEY (part_number) REFERENCES part (part_number) ON DELETE CASCADE
);

CREATE TABLE customer_orders (
	ssn VARCHAR(9) NOT NULL,
    customer_number VARCHAR(9) NOT NULL,
    order_number VARCHAR(10) NOT NULL,
    PRIMARY KEY (ssn, customer_number, order_number),
    FOREIGN KEY (ssn) REFERENCES employee (ssn) ON DELETE CASCADE,
    FOREIGN KEY (customer_number) REFERENCES customer (customer_number) ON DELETE CASCADE,
    FOREIGN KEY (order_number) REFERENCES customer_order (order_number) ON DELETE CASCADE
);