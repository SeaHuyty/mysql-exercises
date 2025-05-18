-- Q17: Write a query to find the 4th minimum salary in the employees table.
SELECT
	DISTINCT(SALARY)
FROM employees
ORDER BY SALARY ASC
LIMIT 1 OFFSET 3;