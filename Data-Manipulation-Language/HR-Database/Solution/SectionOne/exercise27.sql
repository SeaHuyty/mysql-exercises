-- 27. Retrieve first name, last name, job id, job title, department id, and department name for all employees 
--     who work in Toronto City.
SELECT
	e.FIRST_NAME,
    e.LAST_NAME,
    e.JOB_ID,
    j.JOB_TITLE,
    d.DEPARTMENT_ID,
    d.DEPARTMENT_NAME
FROM employees e
JOIN jobs j ON e.JOB_ID = j.JOB_ID
JOIN departments d ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
JOIN locations l ON d.LOCATION_ID = l.LOCATION_ID
WHERE l.CITY = 'Toronto';