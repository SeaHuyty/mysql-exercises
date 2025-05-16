-- 3. Write SQL statement to retrieve the last name and salary for all employees whose salary is not in 
--      the range 5000 through 12000.
SELECT
	LAST_NAME,
    SALARY
FROM employees
WHERE SALARY NOT BETWEEN 5000 AND 12000;