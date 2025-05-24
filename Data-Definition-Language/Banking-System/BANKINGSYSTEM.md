# Banking System

Design and create the foundational schema for a Banking System. The database will include customers, their accounts, transactions, and loan information.

---

### 1. **Customers**

Stores customer personal details.

| Attribute Name  | Data Type    | Description                        |
| --------------- | ------------ | ---------------------------------- |
| `customer_id`   | INT (PK)     | Unique identifier for the customer |
| `first_name`    | VARCHAR(50)  | Customer’s first name              |
| `last_name`     | VARCHAR(50)  | Customer’s last name               |
| `email`         | VARCHAR(100) | Customer’s email address           |
| `phone`         | VARCHAR(20)  | Customer’s phone number            |
| `address`       | VARCHAR(255) | Customer’s address                 |
| `date_of_birth` | DATE         | Customer’s date of birth           |
| `created_at`    | TIMESTAMP    | Account creation timestamp         |

---

### 2. **Accounts**

Stores information about customer bank accounts.

| Attribute Name | Data Type            | Description                                    |
| -------------- | -------------------- | ---------------------------------------------- |
| `account_id`   | INT (PK)             | Unique identifier for the account              |
| `customer_id`  | INT (FK → Customers) | Owner of the account                           |
| `account_type` | VARCHAR(20)          | Type (e.g., 'Savings', 'Checking')             |
| `balance`      | DECIMAL(15,2)        | Current account balance                        |
| `opened_date`  | DATE                 | When the account was opened                    |
| `status`       | VARCHAR(20)          | Status (e.g., 'Active', 'Closed', 'Suspended') |

---

### 3. **Transactions**

Stores all transactions made on accounts.

| Attribute Name     | Data Type           | Description                               |
| ------------------ | ------------------- | ----------------------------------------- |
| `transaction_id`   | INT (PK)            | Unique transaction identifier             |
| `account_id`       | INT (FK → Accounts) | Account involved in the transaction       |
| `amount`           | DECIMAL(15,2)       | Transaction amount                        |
| `transaction_type` | VARCHAR(20)         | 'Deposit', 'Withdrawal', 'Transfer', etc. |
| `transaction_date` | TIMESTAMP           | Date and time of the transaction          |
| `description`      | VARCHAR(255)        | Optional note or description              |

---

### 4. **Loans**

Stores customer loan details.

| Attribute Name     | Data Type            | Description                           |
| ------------------ | -------------------- | ------------------------------------- |
| `loan_id`          | INT (PK)             | Unique loan identifier                |
| `customer_id`      | INT (FK → Customers) | Customer who took the loan            |
| `loan_amount`      | DECIMAL(15,2)        | Total loan amount                     |
| `loan_type`        | VARCHAR(50)          | Type of loan (e.g., 'Home', 'Auto')   |
| `interest_rate`    | DECIMAL(5,2)         | Annual interest rate (%)              |
| `loan_term_months` | INT                  | Term duration in months               |
| `start_date`       | DATE                 | Date when loan started                |
| `due_date`         | DATE                 | Date when the loan should be paid off |
| `status`           | VARCHAR(20)          | e.g., 'Approved', 'Ongoing', 'Closed' |

Click here to [See Solution](./bankingSystem.sql)

### 5. **Relational Schema**

Use reverse engineering to convert the SQL database definition into a relational schema.

[See Solution](./schema.png)