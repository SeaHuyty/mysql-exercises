-- 6. Retrieve the total salary for each employee.
SELECT 
	CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME,
    EMPLOYEE_ID, JOB_ID,
	SALARY + COMMISSION_PCT AS TOTAL_SALARY
FROM employees;