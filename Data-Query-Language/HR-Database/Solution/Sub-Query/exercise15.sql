-- Q15: Write a query to fetch even numbered records from employees table.
SELECT
	*
FROM (
	SELECT
		*,
		ROW_NUMBER() OVER (
			ORDER BY EMPLOYEE_ID
		) AS ROW_NUM
	FROM employees
) AS SUB
WHERE ROW_NUM % 2 = 0;