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


-- Insert Customers
INSERT INTO Customers (first_name, last_name, email, phone, address, date_of_birth) VALUES
('Megan', 'Chang', 'greenwilliam@yahoo.com', '759-382-4219x4892', '578 Michael Island, New Thomas, NC 34644', '1953-08-17'),
('Linda', 'Dunn', 'cortezraymond@garrett.com', '513.933.2871', '714 Mann Plaza Suite 839, Seanfurt, OK 32234', '1969-02-23'),
('David', 'Young', 'larsonjessica@hotmail.com', '001-519-012-2345', '5083 Margaret Islands Apt. 497, South Lisa, AZ 20859', '1981-06-11'),
('Laura', 'Ward', 'clarkpeters@gmail.com', '667-343-9883', '526 Donald Station, Jacobtown, WA 91333', '1960-11-03'),
('James', 'White', 'milesalbert@yahoo.com', '821-192-2233x144', '9874 Long Road, South Ashley, CO 14214', '1990-04-21'),
('Susan', 'Miller', 'rossvicky@yahoo.com', '802-908-9877', '1262 Michael Station, West Robert, UT 19171', '1974-10-16'),
('Steven', 'Harris', 'steven.harris@gmail.com', '377-111-8888', '88 Brian Loop, New Paula, MN 78441', '1959-09-29'),
('Jessica', 'Lopez', 'jessica.lopez@live.com', '448-222-5555', '2434 Red Hill, South Maria, NJ 54144', '1987-07-12'),
('John', 'Allen', 'johnallen@gmail.com', '129-444-9999', '3457 Hillcrest Drive, East Paul, VT 34334', '1965-02-05'),
('Karen', 'Nelson', 'karen.nelson@hotmail.com', '555-666-7777', '8757 Oak Street, West Jane, FL 99623', '1983-12-17'),
('Brian', 'Wright', 'brianwright@gmail.com', '444-555-6666', '3247 Pine Avenue, East Joe, MI 20983', '1975-05-22'),
('Emily', 'King', 'emily.king@gmail.com', '333-444-5555', '7899 Maple Road, South Anna, TX 54321', '1992-08-30'),
('Michael', 'Scott', 'michael.scott@dundermifflin.com', '111-222-3333', '1725 Slough Avenue, Scranton, PA 18505', '1975-03-15'),
('Angela', 'Martin', 'angela.martin@dundermifflin.com', '222-333-4444', '1734 Paper Road, Scranton, PA 18505', '1971-01-25'),
('Dwight', 'Schrute', 'dwight.schrute@dundermifflin.com', '333-222-1111', '1726 Beet Farm Road, Scranton, PA 18505', '1968-01-20'),
('Pamela', 'Beesly', 'pamela.beesly@dundermifflin.com', '555-111-2222', '1727 Reception Road, Scranton, PA 18505', '1979-03-25'),
('Ryan', 'Howard', 'ryan.howard@dundermifflin.com', '666-777-8888', '1728 Temp Road, Scranton, PA 18505', '1982-07-10'),
('Kelly', 'Kapoor', 'kelly.kapoor@dundermifflin.com', '777-888-9999', '1729 Customer Service Road, Scranton, PA 18505', '1980-05-05'),
('Stanley', 'Hudson', 'stanley.hudson@dundermifflin.com', '888-999-0000', '1730 Sales Road, Scranton, PA 18505', '1950-08-20'),
('Phyllis', 'Vance', 'phyllis.vance@dundermifflin.com', '999-000-1111', '1731 Accounting Road, Scranton, PA 18505', '1955-09-17');

-- Insert Accounts
INSERT INTO Accounts (customer_id, account_type, balance, status) VALUES
(13, 'Checking', 298.37, 'Inactive'),
(13, 'Checking', 4842.22, 'Inactive'),
(1, 'Savings', 1250.50, 'Active'),
(2, 'Savings', 2200.00, 'Active'),
(3, 'Checking', 3100.75, 'Active'),
(4, 'Checking', 1985.60, 'Inactive'),
(5, 'Savings', 4320.00, 'Active'),
(6, 'Checking', 785.35, 'Active'),
(7, 'Savings', 1200.00, 'Inactive'),
(8, 'Checking', 4500.20, 'Active'),
(9, 'Savings', 560.75, 'Active'),
(10, 'Checking', 980.45, 'Inactive'),
(11, 'Savings', 1340.80, 'Active'),
(12, 'Checking', 670.55, 'Active'),
(14, 'Savings', 2890.00, 'Active'),
(15, 'Checking', 1345.00, 'Active'),
(16, 'Savings', 990.30, 'Inactive'),
(17, 'Checking', 2100.75, 'Active'),
(18, 'Savings', 455.20, 'Active'),
(19, 'Checking', 3000.00, 'Inactive');

-- Insert Transactions
INSERT INTO Transactions (account_id, amount, transaction_type, description) VALUES
(17, 282.88, 'Deposit', 'Particularly partner relate mention expect.'),
(7, 896.09, 'Transfer', 'In approach recent program possible natural.'),
(3, 500.00, 'Withdrawal', 'ATM withdrawal at downtown branch.'),
(8, 1200.00, 'Deposit', 'Monthly salary deposit.'),
(1, 250.00, 'Deposit', 'Online transfer from savings.'),
(4, 100.00, 'Withdrawal', 'Bill payment.'),
(5, 700.00, 'Deposit', 'Check deposit.'),
(10, 50.00, 'Withdrawal', 'Debit card purchase.'),
(12, 1000.00, 'Transfer', 'Transfer to investment account.'),
(14, 150.00, 'Deposit', 'Gift received.'),
(6, 300.00, 'Withdrawal', 'Cash withdrawal.'),
(9, 450.00, 'Deposit', 'Tax refund.'),
(11, 200.00, 'Deposit', 'Bonus payment.'),
(13, 130.00, 'Withdrawal', 'Grocery shopping.'),
(15, 400.00, 'Deposit', 'Freelance payment.'),
(16, 350.00, 'Withdrawal', 'Utility bill payment.'),
(2, 600.00, 'Deposit', 'Side business income.'),
(18, 275.00, 'Withdrawal', 'Medical expenses.'),
(19, 500.00, 'Deposit', 'Stock dividends.'),
(20, 800.00, 'Transfer', 'Transfer to joint account.');

-- Insert Loans
INSERT INTO Loans (customer_id, loan_amount, loan_type, interest_rate, loan_term_months, start_date, due_date, status) VALUES
(9, 4430.21, 'Personal', 7.64, 12, '2023-07-21', '2024-07-15', 'Closed'),
(6, 3991.08, 'Education', 3.75, 48, '2023-09-05', '2027-08-15', 'Approved'),
(1, 10000.00, 'Home', 5.50, 60, '2022-01-01', '2027-01-01', 'Ongoing'),
(2, 15000.00, 'Auto', 6.20, 36, '2023-03-10', '2026-03-10', 'Ongoing'),
(3, 5000.00, 'Personal', 7.00, 24, '2023-05-15', '2025-05-15', 'Approved'),
(4, 20000.00, 'Home', 5.25, 48, '2021-06-20', '2025-06-20', 'Closed'),
(5, 7500.00, 'Auto', 6.50, 36, '2023-08-01', '2026-08-01', 'Ongoing'),
(7, 8000.00, 'Personal', 7.85, 12, '2023-07-01', '2024-07-01', 'Rejected'),
(8, 30000.00, 'Home', 4.75, 60, '2020-02-15', '2025-02-15', 'Closed'),
(10, 2500.00, 'Education', 3.95, 24, '2023-04-01', '2025-04-01', 'Approved'),
(11, 12000.00, 'Auto', 6.10, 36, '2022-10-15', '2025-10-15', 'Ongoing'),
(12, 18000.00, 'Home', 5.00, 48, '2021-08-10', '2025-08-10', 'Closed'),
(14, 6000.00, 'Personal', 7.25, 12, '2023-01-01', '2024-01-01', 'Ongoing'),
(15, 4000.00, 'Education', 3.85, 24, '2023-06-20', '2025-06-20', 'Approved'),
(16, 10000.00, 'Home', 5.60, 60, '2020-09-10', '2025-09-10', 'Closed'),
(17, 15000.00, 'Auto', 6.30, 36, '2023-02-15', '2026-02-15', 'Ongoing'),
(18, 8000.00, 'Personal', 7.80, 12, '2023-07-05', '2024-07-05', 'Rejected'),
(19, 25000.00, 'Home', 4.85, 60, '2021-03-10', '2026-03-10', 'Ongoing'),
(20, 5000.00, 'Education', 3.70, 24, '2023-05-20', '2025-05-20', 'Approved');