-- 6. Write SQL statement to retrieve the last name, salary, and commission for all employees who earn commissions. 
--      Sort data in descending order of salary and commissions.
SELECT
	LAST_NAME,
    SALARY,
    COMMISSION_PCT
FROM employees
WHERE COMMISSION_PCT > 0
ORDER BY COMMISSION_PCT DESC;