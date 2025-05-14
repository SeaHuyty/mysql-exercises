-- Count the number of distinct salary values in the database.
SELECT 
	COUNT(DISTINCT SALARY) AS distinct_salary 
FROM employees;