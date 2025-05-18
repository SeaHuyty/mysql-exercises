-- Q8: Write a query to find the name (first name, last name), and salary of the employees who earns more than the earning of Mr. Bell.
SELECT
	FIRST_NAME,
	LAST_NAME,
	SALARY
FROM employees
WHERE SALARY > (
	SELECT
		SALARY
	FROM employees
	WHERE LAST_NAME = 'Bell'
);