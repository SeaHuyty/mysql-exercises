-- 9. Write a query to retrieve employees whose job has minimum salary 4200 and maximum salary 9000.
SELECT
	e.EMPLOYEE_ID,
	CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS FULL_NAME,
    j.JOB_TITLE,
    j.MIN_SALARY,
    j.MAX_SALARY
FROM employees e
JOIN jobs j ON e.JOB_ID = j.JOB_ID
WHERE j.MIN_SALARY = 4200 AND j.MAX_SALARY = 9000;