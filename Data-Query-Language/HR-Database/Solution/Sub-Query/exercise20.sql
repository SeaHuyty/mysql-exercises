-- Q20: Write a query to get 3 maximum salaries.
SELECT
    DISTINCT(SALARY)
FROM employees
ORDER BY SALARY DESC
LIMIT 3;