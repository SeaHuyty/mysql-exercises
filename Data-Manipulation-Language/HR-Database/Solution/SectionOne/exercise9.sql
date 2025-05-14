-- Retrieve the number of employees who can earn a commission.
SELECT 
	COUNT(*) AS employees_with_commission 
FROM employees 
WHERE COMMISSION_PCT > 0;