USE banking_system;

-- 1. Michael - Deputy Manager
CREATE USER 'michael'@'localhost' IDENTIFIED BY 'michael123$';
GRANT ALL PRIVILEGES ON banking_system.* TO 'michael'@'localhost' WITH GRANT OPTION;

	
-- 2. Jessica - Database Administrator
CREATE USER 'jessica'@'localhost' IDENTIFIED BY 'jessica2023$';
GRANT ALTER, CREATE VIEW, DELETE, SELECT, INSERT, UPDATE ON banking_system.* TO 'jessica'@'localhost';
revoke ALTER, CREATE VIEW, DELETE, SELECT, INSERT, UPDATE ON banking_system.* FROM 'jessica'@'localhost';
GRANT all privileges on banking_system.* TO 'jessica'@'localhost';


-- 3. James - Database Administrator
CREATE USER 'james'@'localhost' IDENTIFIED BY 'james2024$';
GRANT ALTER, CREATE VIEW, DELETE, SELECT, INSERT, UPDATE ON banking_system.* TO 'james'@'localhost';


-- B. Web Development Team
-- David - Web Development Manager
CREATE USER 'david'@'localhost' IDENTIFIED BY 'david123456$';
GRANT ALTER, CREATE VIEW, INSERT, SELECT, UPDATE ON banking_system.* TO 'david'@'localhost';


-- Matthew - Senior Developer
CREATE USER 'matthew'@'localhost' IDENTIFIED BY 'matthew6789$';
GRANT CREATE VIEW, SELECT, INSERT, UPDATE ON banking_system.* TO 'matthew'@'localhost'; 


-- Emily -  Junior Developer
CREATE USER 'emily'@'localhost' IDENTIFIED BY 'emily1234$';
GRANT SELECT, INSERT, UPDATE ON banking_system.Customers TO 'emily'@'localhost';
GRANT SELECT, INSERT, UPDATE ON banking_system.Accounts TO 'emily'@'localhost';
GRANT SELECT, INSERT, UPDATE ON banking_system.Transactions TO 'emily'@'localhost';


-- John - Junior Developer
CREATE USER 'john'@'localhost' IDENTIFIED BY 'john1234$';
GRANT SELECT, INSERT, UPDATE ON banking_system.Customers TO 'john'@'localhost';
GRANT SELECT, INSERT, UPDATE ON banking_system.Accounts TO 'john'@'localhost';
GRANT SELECT, INSERT, UPDATE ON banking_system.Transactions TO 'john'@'localhost';


-- Mario - Intern 
CREATE USER 'mario'@'localhost' IDENTIFIED BY 'mario1234$' PASSWORD EXPIRE INTERVAL 100 DAY;
GRANT SELECT, INSERT, UPDATE ON banking_system.Customers TO 'mario'@'localhost';
GRANT SELECT, INSERT, UPDATE ON banking_system.Accounts TO 'mario'@'localhost';
GRANT SELECT, INSERT, UPDATE ON banking_system.Transactions TO 'mario'@'localhost';