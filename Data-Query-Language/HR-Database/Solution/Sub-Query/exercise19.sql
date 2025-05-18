-- Q19: Write a query to list the department ID and name of all the departments where no employee is working.
SELECT
	d.DEPARTMENT_ID,
	d.DEPARTMENT_NAME	
FROM departments d
LEFT JOIN employees e ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
WHERE e.EMPLOYEE_ID IS NULL;