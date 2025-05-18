-- Q22: Write a query to get nth max salaries of employees.
SELECT
	DISTINCT(SALARY)
FROM employees
ORDER BY SALARY DESC
LIMIT 1 OFFSET 4;