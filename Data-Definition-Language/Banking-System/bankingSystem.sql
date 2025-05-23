CREATE DATABASE banking_system;
USE banking_system;

CREATE TABLE Customers (
	customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    address VARCHAR(255),
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Accounts (
	account_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    account_type ENUM('Savings', 'Checking') NOT NULL,
    balance DECIMAL(15, 2) NOT NULL DEFAULT 0.00,
    opened_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) NOT NULL DEFAULT 'Active',
    
    FOREIGN KEY (customer_id) REFERENCES Customers (customer_id) ON DELETE CASCADE
);

CREATE TABLE Transactions (
	transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    account_id INT NOT NULL,
    amount DECIMAL(15, 2),
    transaction_type ENUM('Deposit', 'Withdrawal', 'Transfer') NOT NULL,
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    description VARCHAR(255),
    
    FOREIGN KEY (account_id) REFERENCES Accounts (account_id)
);

CREATE TABLE Loans (
	loan_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    loan_amount DECIMAL(15, 2) NOT NULL,
    loan_type VARCHAR(50),
    interest_rate DECIMAL(5, 2) NOT NULL,
    loan_term_months INT NOT NULL,
    start_date DATE,
    due_date DATE,
    status ENUM('Approved', 'Ongoing', 'Closed', 'Rejected') DEFAULT 'Ongoing',
    
    FOREIGN KEY (customer_id) REFERENCES Customers (customer_id)
);