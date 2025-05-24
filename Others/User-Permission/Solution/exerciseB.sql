USE banking_system;

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