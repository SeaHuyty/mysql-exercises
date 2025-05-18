USE hr;

-- Sub-Query

-- Q1: Write a query to find the name (first name, last name) and the salary of the employees who have a higher salary than the employee whose last name=’Bull’.
SELECT
	FIRST_NAME,
    LAST_NAME,
    SALARY
FROM employees
WHERE SALARY > (
	SELECT
		SALARY
	FROM employees
    WHERE LAST_NAME = 'Bull');
    
-- Q2: Write a query to find the name (first name, last name) of all employees who works in the IT department.
SELECT
	e.FIRST_NAME,
    e.LAST_NAME
FROM employees e
JOIN departments d
ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
WHERE DEPARTMENT_NAME = 'IT';

-- Q3: Write a query to find the name (first name, last name) of the employees who have a manager and worked in a USA based department.
SELECT
	e.FIRST_NAME,
	e.LAST_NAME
FROM employees e
JOIN departments d ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
JOIN locations l ON l.LOCATION_ID = d.LOCATION_ID
WHERE e.MANAGER_ID IS NOT NULL
AND l.COUNTRY_ID = 'US';
 
-- Q4: Write a query to find the name (first name, last name) of the employees who are managers.
SELECT
	e.EMPLOYEE_ID,
	e.FIRST_NAME,
    e.LAST_NAME,
    d.DEPARTMENT_NAME
FROM employees e
JOIN departments d
ON e.EMPLOYEE_ID = d.MANAGER_ID;

-- Q5: Write a query to find the name (first name, last name), and salary of the employees whose salary is greater than the average salary.
SELECT 
	FIRST_NAME,
    LAST_NAME
FROM employees
WHERE SALARY > (
	SELECT
		AVG(SALARY)
	FROM employees
);
 
-- Q6: Write a query to find the name (first name, last name), and salary of the employees whose salary is equal to the minimum salary for their job grade.
SELECT
	e.FIRST_NAME,
	e.LAST_NAME,
	e.SALARY
FROM employees e
WHERE e.SALARY = (
	SELECT
		MIN(SALARY)
	FROM employees
	WHERE JOB_ID = e.JOB_ID
);
 
-- Q7: Write a query to find the name (first name, last name), and salary of the employees who earns more than the average salary and works in any of the IT departments.
SELECT
	e.FIRST_NAME,
    e.LAST_NAME,
    e.SALARY,
    d.DEPARTMENT_NAME
FROM employees e
JOIN departments d
ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
WHERE SALARY > (
	SELECT
		AVG(SALARY)
	FROM employees
) AND d.DEPARTMENT_NAME LIKE 'IT%';
 
-- Q8: Write a query to find the name (first name, last name), and salary of the employees who earns more than the earning of Mr. Bell.
SELECT
	FIRST_NAME,
	LAST_NAME,
	SALARY
FROM employees
WHERE SALARY > (
	SELECT
		SALARY
	FROM employees
	WHERE LAST_NAME = 'Bell'
);
 
-- Q9: Write a query to find the name (first name, last name), and salary of the employees who earn the same salary as the minimum salary for all departments.
SELECT
	FIRST_NAME,
    LAST_NAME,
    DEPARTMENT_ID
FROM employees
WHERE SALARY = (
	SELECT
		MIN(SALARY)
	FROM employees
);
 
-- Q10: Write a query to find the name (first name, last name), and salary of the employees whose salary is greater than the average salary of all departments.
SELECT
	FIRST_NAME,
	LAST_NAME,
	SALARY
FROM employees
WHERE SALARY > (
	SELECT
		AVG(SALARY)
	FROM employees
);
 
-- Q11: Write a query to find the name (first name, last name) and salary of the employees who earn a salary that is higher than the salary of all the Shipping Clerk (JOB ID = ’SH_CLERK’). Sort the results of the salary of the lowest to highest.
SELECT
	e.FIRST_NAME,
    e.LAST_NAME,
    e.SALARY
FROM employees e
JOIN jobs j
ON j.JOB_ID = e.JOB_ID
WHERE e.SALARY > (
	SELECT 
		MAX(SALARY)
	FROM employees
    WHERE JOB_ID = 'SH_CLERK'
) ORDER BY e.SALARY ASC;
 
-- Q12: Write a query to find the name (first name, last name) of the employees who are not supervisors.
SELECT
	FIRST_NAME,
	LAST_NAME
FROM employees
WHERE EMPLOYEE_ID NOT IN (
	SELECT
		DISTINCT(MANAGER_ID)
	FROM employees
	WHERE MANAGER_ID IS NOT NULL
);

-- Q13: Write a query to display the employee ID, first name, last name, and department names of all employees.
SELECT
	e.EMPLOYEE_ID,
	e.FIRST_NAME,
    e.LAST_NAME,
    d.DEPARTMENT_NAME
FROM employees e
JOIN departments d
ON d.DEPARTMENT_ID = e.DEPARTMENT_ID;
 
-- Q14: Write a query to display the employee ID, first name, last name, salary of all employees whose salary is above average for their departments.
SELECT
	e.EMPLOYEE_ID,
	e.FIRST_NAME,
	e.LAST_NAME,
	e.SALARY	
FROM employees e
WHERE e.SALARY > (
	SELECT
		AVG(SALARY)
	FROM employees
	WHERE DEPARTMENT_ID = e.DEPARTMENT_ID
);
 
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

-- Q16: Write a query to find the 5th maximum salary in the employees table.
SELECT
	DISTINCT(SALARY)
FROM employees
ORDER BY SALARY DESC
LIMIT 1 OFFSET 4;

-- Q17: Write a query to find the 4th minimum salary in the employees table.
SELECT
	DISTINCT(SALARY)
FROM employees
ORDER BY SALARY ASC
LIMIT 1 OFFSET 3;

-- Q18: Write a query to select last 10 records from a table.
SELECT
	*
FROM employees
ORDER BY EMPLOYEE_ID DESC
LIMIT 10;

-- Q19: Write a query to list the department ID and name of all the departments where no employee is working.
SELECT
	d.DEPARTMENT_ID,
	d.DEPARTMENT_NAME	
FROM departments d
LEFT JOIN employees e ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
WHERE e.EMPLOYEE_ID IS NULL;
 
-- Q20: Write a query to get 3 maximum salaries.
SELECT
    DISTINCT(SALARY)
FROM employees
ORDER BY SALARY DESC
LIMIT 3;

-- Q21: Write a query to get 3 minimum salaries.
SELECT
    DISTINCT(SALARY)
FROM employees
ORDER BY SALARY ASC
LIMIT 3;

-- Q22: Write a query to get nth max salaries of employees.
SELECT
	DISTINCT(SALARY)
FROM employees
ORDER BY SALARY DESC
LIMIT 1 OFFSET 4;