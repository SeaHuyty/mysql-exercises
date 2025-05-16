-- 24. Retrieve all employees who are working in departments 100 AND their salary is greater than ALL 
--     employees in department 60.
SELECT * FROM employees 
WHERE (DEPARTMENT_ID = 100)
AND SALARY > ALL (
	SELECT SALARY FROM employees
    WHERE DEPARTMENT_ID = 60
);