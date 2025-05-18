-- Q11: Write a query to find the name (first name, last name) and salary of the employees who earn a salary that is higher than the salary of all the Shipping Clerk (JOB ID = ’SH_CLERK’). Sort the results of the salary of the lowest to highest.
SELECT
	e.FIRST_NAME,
    e.LAST_NAME,
    e.SALARY
FROM employees e
JOIN jobs j
ON j.JOB_ID = e.JOB_ID
WHERE e.SALARY > (
	SELECT 
		MAX(SALARY)
	FROM employees
    WHERE JOB_ID = 'SH_CLERK'
) ORDER BY e.SALARY ASC;