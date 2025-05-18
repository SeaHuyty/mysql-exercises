-- 1. Write a query to list the number of jobs available in the employees table.
SELECT
	COUNT(DISTINCT(JOB_ID))
FROM employees;