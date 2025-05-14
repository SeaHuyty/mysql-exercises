-- Retrieve the sum of the salaries of all employees, the maximum salary, the minimum salary, and the average salary.
SELECT
	SUM(SALARY + NVL(COMMISSION_PCT, 0)) AS total_salary,
    MAX(SALARY) AS max_salary,
    MIN(SALARY) AS min_salary,
    AVG(SALARY) AS average_salary 
FROM employees;