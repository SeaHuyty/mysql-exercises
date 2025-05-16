-- 12. Retrieve department Id and department name for each employee.
SELECT 
    employees.EMPLOYEE_ID,
    CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS FULL_NAME,
    departments.DEPARTMENT_ID, 
    departments.DEPARTMENT_NAME
FROM employees
RIGHT JOIN departments 
ON employees.DEPARTMENT_ID = departments.DEPARTMENT_ID;