-- Q13: Write a query to display the employee ID, first name, last name, and department names of all employees.
SELECT
	e.EMPLOYEE_ID,
	e.FIRST_NAME,
    e.LAST_NAME,
    d.DEPARTMENT_NAME
FROM employees e
JOIN departments d
ON d.DEPARTMENT_ID = e.DEPARTMENT_ID;