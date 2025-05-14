-- 3.3. Retrieve the full name of each employee and the full name of his manager.
SELECT
	employee.EMPLOYEE_ID,
    CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME) AS EMPLOYEE_NAME,
    manager.EMPLOYEE_ID AS MANAGER_ID,
    CONCAT(manager.FIRST_NAME, ' ', manager.LAST_NAME) AS MANAGER_NAME
FROM employees employee
LEFT JOIN employees manager
ON employee.MANAGER_ID = manager.EMPLOYEE_ID;