-- Q2: Write a query to find the name (first name, last name) of all employees who works in the IT department.
SELECT
	e.FIRST_NAME,
    e.LAST_NAME
FROM employees e
JOIN departments d
ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
WHERE DEPARTMENT_NAME = 'IT';