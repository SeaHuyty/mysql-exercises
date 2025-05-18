-- Q5: Write a query to get the average salary and number of employees working the department 90.
SELECT
	AVG(SALARY),
    COUNT(*)
FROM employees
WHERE DEPARTMENT_ID = 90;