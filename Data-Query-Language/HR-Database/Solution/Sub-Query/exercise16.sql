-- Q16: Write a query to find the 5th maximum salary in the employees table.
SELECT
	DISTINCT(SALARY)
FROM employees
ORDER BY SALARY DESC
LIMIT 1 OFFSET 4;