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