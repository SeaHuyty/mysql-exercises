-- Q13: Write a query to get the job ID and maximum salary of the employees where maximum salary is greater than or equal to $4000.
SELECT
	FIRST_NAME,
	LAST_NAME,
	JOB_ID,
	SALARY
FROM employees
WHERE SALARY >= 4000;