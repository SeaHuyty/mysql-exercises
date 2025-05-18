-- Q1: Write a query to find the name (first name, last name) and the salary of the employees who have a higher salary than the employee whose last name=’Bull’.
SELECT
	FIRST_NAME,
    LAST_NAME,
    SALARY
FROM employees
WHERE SALARY > (
	SELECT
		SALARY
	FROM employees
    WHERE LAST_NAME = 'Bull');