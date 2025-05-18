-- Q4: Write a query to find the name (first name, last name) of the employees who are managers.
SELECT
	e.EMPLOYEE_ID,
	e.FIRST_NAME,
    e.LAST_NAME,
    d.DEPARTMENT_NAME
FROM employees e
JOIN departments d
ON e.EMPLOYEE_ID = d.MANAGER_ID;