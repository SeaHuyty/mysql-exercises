-- 13. Write a query to find employee who has salary from 5K to 10K
SELECT
	EMPLOYEE_ID,
	CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME,
    SALARY
FROM employees
WHERE SALARY BETWEEN 5000 AND 10000;