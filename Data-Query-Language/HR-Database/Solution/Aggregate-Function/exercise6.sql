-- Q6: Write a query to get the highest, lowest, sum, and average salary of all employees.
SELECT
	MAX(SALARY) AS MAXIMUM_SALARY,
    MIN(SALARY) AS MINIMUM_SALARY,
    SUM(SALARY) AS TOTAL_SALARY,
    AVG(SALARY) AS AVERAGE_SALARY
FROM employees;