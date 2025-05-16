-- 2. Retrieve all employees who aren't working in any department.
SELECT * 
FROM employees
WHERE DEPARTMENT_ID = NULL;