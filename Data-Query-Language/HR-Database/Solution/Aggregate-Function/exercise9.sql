-- Q9: Write a query to find the manager ID and the salary of the lowest-paid employee for that manager.
SELECT
	MANAGER_ID,
	SALARY AS LOWEST_SALARY
FROM employees
WHERE SALARY = (
SELECT
	MIN(SALARY)
FROM employees);