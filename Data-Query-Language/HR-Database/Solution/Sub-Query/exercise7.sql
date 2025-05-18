-- Q7: Write a query to find the name (first name, last name), and salary of the employees who earns more than the average salary and works in any of the IT departments.
SELECT
	e.FIRST_NAME,
    e.LAST_NAME,
    e.SALARY,
    d.DEPARTMENT_NAME
FROM employees e
JOIN departments d
ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
WHERE SALARY > (
	SELECT
		AVG(SALARY)
	FROM employees
) AND d.DEPARTMENT_NAME LIKE 'IT%';