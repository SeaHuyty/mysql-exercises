-- Retrieve job id and job name for each employee.
SELECT
	employee.EMPLOYEE_ID,
	CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME) AS FULL_NAME,
    job.JOB_ID,
    job.JOB_TITLE
FROM employees employee
RIGHT JOIN jobs job
ON employee.JOB_ID = job.JOB_ID;