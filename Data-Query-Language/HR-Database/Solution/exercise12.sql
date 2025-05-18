-- 12. Write a query to get any employee who has salary greater than or equal to 10000.
SELECT
	EMPLOYEE_ID,
	CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME,
    SALARY
FROM employees
WHERE (SALARY >= 10000);