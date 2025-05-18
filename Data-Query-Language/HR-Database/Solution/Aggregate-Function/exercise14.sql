-- Q14: Write a query to get the average salary for all departments employing more than 10 employees.
SELECT
	DEPARTMENT_ID,
	AVG(SALARY) AS AVERAGE_SALARY
FROM employees
GROUP BY DEPARTMENT_ID
HAVING COUNT(*) > 10;