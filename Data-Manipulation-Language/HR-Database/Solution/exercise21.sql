-- 21. Retrieve all employees whose first name starts with “A” and the third letter is “e”.
SELECT * FROM employees 
WHERE FIRST_NAME LIKE 'A_e%';