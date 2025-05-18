-- Q12: Write a query to find the name (first name, last name) of the employees who are not supervisors.
SELECT
	FIRST_NAME,
	LAST_NAME
FROM employees
WHERE EMPLOYEE_ID NOT IN (
	SELECT
		DISTINCT(MANAGER_ID)
	FROM employees
	WHERE MANAGER_ID IS NOT NULL
);