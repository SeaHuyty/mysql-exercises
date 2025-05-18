-- 7. For each department that its employee’s average salary is greater than 8000, retrieve the average salary 
--      of its employees.
SELECT
	e.DEPARTMENT_ID,
    d.DEPARTMENT_NAME,
    AVG(IFNULL(e.SALARY, 0)) AS AVERAGE_SALARY
FROM employees e
JOIN departments d
ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
GROUP BY e.DEPARTMENT_ID
HAVING AVERAGE_SALARY > 8000;