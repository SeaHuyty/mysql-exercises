-- 23. Retrieve all employees who are working in departments: 60, 90, or 100.
SELECT * FROM employees 
WHERE DEPARTMENT_ID IN (60, 90, 100);