-- Q12: Write a query to get the total salary, maximum, minimum, average salary of employees (job ID wise), for department ID 90 only.
SELECT
	MAX(SALARY) AS MAXIMUM_SALARY,
    MIN(SALARY) AS MINIMUM_SALARY,
    AVG(SALARY) AS AVERAGE_SALARY
FROM employees
WHERE DEPARTMENT_ID = 90;