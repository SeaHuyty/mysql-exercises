-- Q9: Write a query to find the name (first name, last name), and salary of the employees who earn the same salary as the minimum salary for all departments.
SELECT
	FIRST_NAME,
    LAST_NAME,
    DEPARTMENT_ID
FROM employees
WHERE SALARY = (
	SELECT
		MIN(SALARY)
	FROM employees
);