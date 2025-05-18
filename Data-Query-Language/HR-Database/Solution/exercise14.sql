-- 14. Retrieve all employees sorted by their total salary. Total salary = salary + salary * commission_pct
SELECT
	EMPLOYEE_ID,
	CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME,
	(SALARY + IFNULL(SALARY * COMMISSION_PCT, 0)) AS TOTAL_SALARY
FROM employees
ORDER BY TOTAL_SALARY DESC;