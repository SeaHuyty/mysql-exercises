-- Q2: Write a query to get the total salaries payable to employees.
SELECT 
	SUM(SALARY) AS TOTAL_SALARIES_NEEDED
FROM employees;