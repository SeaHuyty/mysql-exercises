-- 30. For each department, retrieve the department number, the number of employees in the department, 
--     and their average salary.
SELECT
	DEPARTMENT_ID,
    COUNT(EMPLOYEE_ID) AS NUMBER_OF_EMPLOYEE,
    AVG(SALARY) AS AVERAGE_SALARY
FROM employees
GROUP BY DEPARTMENT_ID;