-- Q11: Write a query to get the average salary for each job ID excluding programmer.
SELECT
	JOB_ID,
	AVG(SALARY) AS AVERAGE_SALARY
FROM employees
WHERE JOB_ID != 'Programmer'
GROUP BY JOB_ID;