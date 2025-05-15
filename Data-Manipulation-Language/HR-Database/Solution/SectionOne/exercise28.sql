-- 28. Retrieve the first name, last name of all employees that don’t have manager.
SELECT
	FIRST_NAME,
    LAST_NAME
FROM employees
WHERE MANAGER_ID = 0;