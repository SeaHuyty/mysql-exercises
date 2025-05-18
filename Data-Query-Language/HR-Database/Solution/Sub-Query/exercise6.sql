-- Q6: Write a query to find the name (first name, last name), and salary of the employees whose salary is equal to the minimum salary for their job grade.
SELECT
	e.FIRST_NAME,
	e.LAST_NAME,
	e.SALARY
FROM employees e
WHERE e.SALARY = (
	SELECT
		MIN(SALARY)
	FROM employees
	WHERE JOB_ID = e.JOB_ID
);