-- Q14: Write a query to display the employee ID, first name, last name, salary of all employees whose salary is above average for their departments.
SELECT
	e.EMPLOYEE_ID,
	e.FIRST_NAME,
	e.LAST_NAME,
	e.SALARY	
FROM employees e
WHERE e.SALARY > (
	SELECT
		AVG(SALARY)
	FROM employees
	WHERE DEPARTMENT_ID = e.DEPARTMENT_ID
);