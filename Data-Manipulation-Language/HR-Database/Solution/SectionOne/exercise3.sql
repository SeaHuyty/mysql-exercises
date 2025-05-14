-- 1.3. Retrieve the full name of each employee.
SELECT 
	CONCAT(FIRST_NAME,' ', LAST_NAME) AS FULL_NAME 
FROM employees;