-- Q18: Write a query to select last 10 records from a table.
SELECT
	*
FROM employees
ORDER BY EMPLOYEE_ID DESC
LIMIT 10;