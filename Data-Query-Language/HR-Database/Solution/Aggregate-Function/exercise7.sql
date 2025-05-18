-- Q7: Write a query to get the number of employees with the same job.
SELECT
	JOB_ID,
	COUNT(*) AS TOTAL_EMPLOYEES
FROM employees
GROUP BY JOB_ID;