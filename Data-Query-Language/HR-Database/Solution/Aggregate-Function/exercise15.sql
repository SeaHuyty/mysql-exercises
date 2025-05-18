-- Q15: Write a query to get the average salary of employees working in the department 90 and 100.
SELECT
	DEPARTMENT_ID,
	AVG(SALARY) AS AVERAGE_SALARY
FROM employees
WHERE DEPARTMENT_ID IN (90, 100)
GROUP BY DEPARTMENT_ID;