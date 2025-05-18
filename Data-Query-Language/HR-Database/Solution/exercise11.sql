-- 11. Write a query to retrieve departments' names and cities for all departments that has more than 5 employees.
SELECT
	d.DEPARTMENT_NAME,
    l.CITY
FROM departments d
JOIN employees e ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
JOIN locations l ON d.LOCATION_ID = l.LOCATION_ID
GROUP BY d.DEPARTMENT_ID
HAVING COUNT(e.EMPLOYEE_ID) > 5;