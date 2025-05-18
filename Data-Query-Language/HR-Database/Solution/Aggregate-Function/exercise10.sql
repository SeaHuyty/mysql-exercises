-- Q10: Write a query to get the department ID and the total salary payable in each department.
SELECT
	DEPARTMENT_ID,
    SUM(SALARY) AS TOTAL_SALARY_NEEDED
FROM employees
GROUP BY DEPARTMENT_ID;