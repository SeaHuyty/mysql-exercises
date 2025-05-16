-- 29. Retrieve the names and hire dates of all the employees who are hired before their managers, along 
--     with their managers’ names and hire dates.
SELECT
	CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS EMPLOYEE_FULL_NAME,
    e.HIRE_DATE,
    CONCAT(m.FIRST_NAME, ' ', m.LAST_NAME) AS MANAGER_FULL_NAME,
    m.HIRE_DATE
FROM employees e
INNER JOIN employees m
ON e.MANAGER_ID = m.EMPLOYEE_ID
WHERE e.HIRE_DATE < m.HIRE_DATE;