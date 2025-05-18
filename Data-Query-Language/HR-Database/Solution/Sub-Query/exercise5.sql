-- Q5: Write a query to find the name (first name, last name), and salary of the employees whose salary is greater than the average salary.
SELECT 
	FIRST_NAME,
    LAST_NAME
FROM employees
WHERE SALARY > (
	SELECT
		AVG(SALARY)
	FROM employees
);