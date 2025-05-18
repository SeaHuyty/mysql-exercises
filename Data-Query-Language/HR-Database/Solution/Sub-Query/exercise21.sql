-- Q21: Write a query to get 3 minimum salaries.
SELECT
    DISTINCT(SALARY)
FROM employees
ORDER BY SALARY ASC
LIMIT 3;