USE hr;

-- Aggregate Function

-- Q1: Write a query to list the number of jobs available in the employees table.
SELECT
	COUNT(DISTINCT(JOB_ID))
FROM employees;

-- Q2: Write a query to get the total salaries payable to employees.
SELECT 
	SUM(SALARY) AS TOTAL_SALARIES_NEEDED
FROM employees;

-- Q3: Write a query to get the minimum salary from employees table.
SELECT
	MIN(SALARY) AS MINIMUM_SALARY
FROM employees;

-- Q4: Write a query to get the maximum salary of an employee working as a Programmer.
SELECT
	MAX(SALARY) AS MAXIMUM_SALARY
FROM employees;

-- Q5: Write a query to get the average salary and number of employees working the department 90.
SELECT
	AVG(SALARY),
    COUNT(*)
FROM employees
WHERE DEPARTMENT_ID = 90;

-- Q6: Write a query to get the highest, lowest, sum, and average salary of all employees.
SELECT
	MAX(SALARY) AS MAXIMUM_SALARY,
    MIN(SALARY) AS MINIMUM_SALARY,
    SUM(SALARY) AS TOTAL_SALARY,
    AVG(SALARY) AS AVERAGE_SALARY
FROM employees;

-- Q7: Write a query to get the number of employees with the same job.
SELECT
	JOB_ID,
	COUNT(*) AS TOTAL_EMPLOYEES
FROM employees
GROUP BY JOB_ID;

-- Q8: Write a query to get the difference between the highest and lowest salaries.
SELECT 
	(MAX(SALARY) - MIN(SALARY)) AS GAP_SALARY
FROM employees;

-- Q9: Write a query to find the manager ID and the salary of the lowest-paid employee for that manager.
SELECT
	MANAGER_ID,
	SALARY AS LOWEST_SALARY
FROM employees
WHERE SALARY = (
SELECT
	MIN(SALARY)
FROM employees);

-- Q10: Write a query to get the department ID and the total salary payable in each department.
SELECT
	DEPARTMENT_ID,
    SUM(SALARY) AS TOTAL_SALARY_NEEDED
FROM employees
GROUP BY DEPARTMENT_ID;

-- Q11: Write a query to get the average salary for each job ID excluding programmer.
SELECT
	JOB_ID,
	AVG(SALARY) AS AVERAGE_SALARY
FROM employees
WHERE JOB_ID != 'Programmer'
GROUP BY JOB_ID;

-- Q12: Write a query to get the total salary, maximum, minimum, average salary of employees (job ID wise), for department ID 90 only.
SELECT
	MAX(SALARY) AS MAXIMUM_SALARY,
    MIN(SALARY) AS MINIMUM_SALARY,
    AVG(SALARY) AS AVERAGE_SALARY
FROM employees
WHERE DEPARTMENT_ID = 90;
 
-- Q13: Write a query to get the job ID and maximum salary of the employees where maximum salary is greater than or equal to $4000.
SELECT
	FIRST_NAME,
	LAST_NAME,
	JOB_ID,
	SALARY
FROM employees
WHERE SALARY >= 4000;
 
-- Q14: Write a query to get the average salary for all departments employing more than 10 employees.
SELECT
	DEPARTMENT_ID,
	AVG(SALARY) AS AVERAGE_SALARY
FROM employees
GROUP BY DEPARTMENT_ID
HAVING COUNT(*) > 10;

-- Q15: Write a query to get the average salary of employees working in the department 90 and 100.
SELECT
	DEPARTMENT_ID,
	AVG(SALARY) AS AVERAGE_SALARY
FROM employees
WHERE DEPARTMENT_ID IN (90, 100)
GROUP BY DEPARTMENT_ID;