-- 1.1. Write SQL statement to insert a new record into JOBS table with the following information:
--      	JOB_ID = C_ENG
-- 			JOB_TITLE = Computer Engineer MIN_SALARY = 20000
--  		MAX_SALARY = 50000
INSERT jobs (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) VALUES
('C_ENG', 'Computer Engineer', 20000, 50000);


-- 1.2. Retrieve all employees who aren't working in any department.
SELECT * 
FROM employees
WHERE DEPARTMENT_ID = NULL;


-- 1.3. Write SQL statement to retrieve the last name and salary for all employees whose salary is not in 
--      the range 5000 through 12000.
SELECT
	LAST_NAME,
    SALARY
FROM employees
WHERE SALARY NOT BETWEEN 5000 AND 12000;


-- 1.4. Retrieve all employees’ records sorted by their hire date, such that the newest employee should come first 
--      and the old one come last.
SELECT
	*
FROM employees
ORDER BY HIRE_DATE DESC;


-- 2.1. Write SQL statement to retrieve the last names of all employees who have 
--      both an “a” and an “e” in their last name.



-- 2.2. Write SQL statement to retrieve the last name, salary, and commission for all employees who earn commissions. 
--      Sort data in descending order of salary and commissions.
SELECT
	LAST_NAME,
    SALARY,
    COMMISSION_PCT
FROM employees
WHERE COMMISSION_PCT > 0
ORDER BY COMMISSION_PCT DESC;


-- 2.3. For each department that its employee’s average salary is greater than 8000, retrieve the average salary 
--      of its employees.
SELECT
	e.DEPARTMENT_ID,
    d.DEPARTMENT_NAME,
    AVG(IFNULL(e.SALARY, 0)) AS AVERAGE_SALARY
FROM employees e
JOIN departments d
ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
GROUP BY e.DEPARTMENT_ID
HAVING AVERAGE_SALARY > 8000;


-- 3.1. Write SQL statement to retrieve all employee last names in which the third letter of the name is “a”.



-- 3.2. Write a query to retrieve employees whose job has minimum salary 4200 and maximum salary 9000.
SELECT
	e.EMPLOYEE_ID,
	CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS FULL_NAME,
    j.JOB_TITLE,
    j.MIN_SALARY,
    j.MAX_SALARY
FROM employees e
JOIN jobs j ON e.JOB_ID = j.JOB_ID
WHERE j.MIN_SALARY = 4200 AND j.MAX_SALARY = 9000;


-- 3.3. Retrieve all employees sorted by their first name.



-- 4.1. Write a query to retrieve departments' names and cities for all departments that has more than 5 employees.
SELECT
	d.DEPARTMENT_NAME,
    l.CITY
FROM departments d
JOIN employees e ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
JOIN locations l ON d.LOCATION_ID = l.LOCATION_ID
GROUP BY d.DEPARTMENT_ID
HAVING COUNT(e.EMPLOYEE_ID) > 5;


-- 4.2. Write a query to get any employee who has salary greater than or equal to 10000.
SELECT
	EMPLOYEE_ID,
	CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME,
    SALARY
FROM employees
WHERE (SALARY >= 10000);


-- 4.3. Write a query to find employee who has salary from 5K to 10K
SELECT
	EMPLOYEE_ID,
	CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME,
    SALARY
FROM employees
WHERE SALARY BETWEEN 5000 AND 10000;


-- 4.4. Retrieve all employees sorted by their total salary. Total salary = salary + salary * commission_pct
SELECT
	EMPLOYEE_ID,
	CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME,
	(SALARY + IFNULL(SALARY * COMMISSION_PCT, 0)) AS TOTAL_SALARY
FROM employees
ORDER BY TOTAL_SALARY DESC;


--  5.1. Write a query to get any employee who is from department ‘Executive’.



--  5.2. Write a query to get all employee who is working on department 50, 70, 90.



--  5.3. Write a query to find employee whose first_name starts with an 'O’



--  5.4. Retrieve all employees sorted by their total salary in descending order, if there are two employees have the same 
--       total salary, then sort them by first name in ascending order, then by their last name.



-- 6.1. Write a query to find employee whose name contains the pattern 'la'



-- 6.2. Write a query to find employee whose last_name starts with k, ends with o and contains any characters between 
--      e.g., Kano, Kenjiro, Kentaro.


-- 6.3. Write a query to display 3 employees start from record number 7 (which is the 8th record)
