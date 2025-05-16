-- 4. Retrieve all employees’ records sorted by their hire date, such that the newest employee should come first 
--      and the old one come last.
SELECT
	*
FROM employees
ORDER BY HIRE_DATE DESC;