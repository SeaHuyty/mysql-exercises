-- Q3: Write a query to find the name (first name, last name) of the employees who have a manager and worked in a USA based department.
SELECT
	e.FIRST_NAME,
	e.LAST_NAME
FROM employees e
JOIN departments d ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
JOIN locations l ON l.LOCATION_ID = d.LOCATION_ID
WHERE e.MANAGER_ID IS NOT NULL
AND l.COUNTRY_ID = 'US';