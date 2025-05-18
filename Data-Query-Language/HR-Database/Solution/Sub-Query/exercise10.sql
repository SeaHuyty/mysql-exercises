-- Q10: Write a query to find the name (first name, last name), and salary of the employees whose salary is greater than the average salary of all departments.
SELECT
	FIRST_NAME,
	LAST_NAME,
	SALARY
FROM employees
WHERE SALARY > (
	SELECT
		AVG(SALARY)
	FROM employees
);