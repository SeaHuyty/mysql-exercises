-- 25. Retrieve employee ID, employee last name, department ID and department name of all employees who are 
--     hired before 2004.
SELECT
	employee.EMPLOYEE_ID,
    employee.LAST_NAME,
    department.DEPARTMENT_ID,
    department.DEPARTMENT_NAME,
    employee.HIRE_DATE
FROM employees employee
RIGHT JOIN departments department
ON employee.DEPARTMENT_ID = department.DEPARTMENT_ID
WHERE (HIRE_DATE < '2004-01-01');