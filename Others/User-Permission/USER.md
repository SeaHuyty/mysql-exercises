# User and Permission

You are the Database Administration Manager for the banking_system database. You are responsible for creating user accounts and assigning appropriate permissions to ensure secure and efficient database usage. Please download this [Bank Database](./bankingSystem.sql) to begin the scenario.

### A. Database Administration Team

* **1. Michael - Deputy Manager**

  * Username   : michael
  * Password   : michael123$
  * Privileges : ALL PRIVILEGES on all tables + GRANT OPTION 

* **2. Jessica - Database Administrator**

  * Username  : jessica
  * Password  : jessica2023$
  * Initial Privileges : ALTER, CREATE VIEW, DELETE, SELECT, INSERT, UPDATE on all tables
  * Follow-up : Revoke the above privileges + Grant ALL PRIVILEGES on all tables

* **3. James - Database Administrator**

  * Username   : james
  * Password   : james2024$
  * Privileges : ALTER, CREATE VIEW, DELETE, SELECT, INSERT, UPDATE on all tables

  Click here to see [Solution](./Solution/exerciseA.sql)

### B. Web Development Team

* **1. David - Web Development Manager**

  * Username   : david
  * Password   : david123456$
  * Privileges : ALTER, CREATE VIEW, INSERT, SELECT, UPDATE on all tables

* **2. Matthew - Senior Developer**

  * Username   : matthew
  * Password   : matthew6789$
  * Privileges : CREATE VIEW, SELECT, INSERT, UPDATE on all tables

* **3. Emily - Junior Developer**

  * Username   : emily
  * Password   : emily1234$
  * Privileges : SELECT, INSERT, UPDATE on the following tables: Customers, Accounts, Transactions

* **4. John - Junior Developer**

  * Username   : john
  * Password   : john1234$
  * Privileges : SELECT, INSERT, UPDATE on the following tables: Customers, Accounts, Transactions

* **5. Mario - Intern**

  * Username   : mario
  * Password   : mario1234$
  * Privileges : SELECT, INSERT, UPDATE on the following tables: Customers, Accounts, Transactions for 100 days

  Click here to see [Solution](./Solution/exerciseB.sql)