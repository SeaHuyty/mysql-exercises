-- Q8: Write a query to get the difference between the highest and lowest salaries.
SELECT 
	(MAX(SALARY) - MIN(SALARY)) AS GAP_SALARY
FROM employees;