-- 26. Retrieve first name, last name, department name and city, for all employees whose salary is greater than 9000.
SELECT
	e.FIRST_NAME,
    e.LAST_NAME,
    d.DEPARTMENT_NAME,
    l.CITY,
    e.SALARY
FROM employees e
JOIN departments d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
JOIN locations l ON d.LOCATION_ID = l.LOCATION_ID
WHERE SALARY > 9000;