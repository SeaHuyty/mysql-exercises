CREATE DATABASE company;
USE company;

CREATE TABLE EMPLOYEE (
	ssn VARCHAR(9) PRIMARY KEY,
	first_name VARCHAR(25) NOT NULL,
    middle_name VARCHAR(20),
    last_name VARCHAR(25) NOT NULL,
    birth_date DATE,
    address VARCHAR(70),
    sex CHAR(6) NOT NULL,
    salary DECIMAL(9, 2),
    super_ssn VARCHAR(9),
    dno INT,
    FOREIGN KEY (super_ssn) REFERENCES EMPLOYEE (ssn) ON DELETE SET NULL
);

CREATE TABLE DEPARTMENT (
	department_number INT PRIMARY KEY,
	department_name VARCHAR(80) NOT NULL,
    manager_ssn VARCHAR(9),
    manager_start_date DATE NOT NULL,
    FOREIGN KEY (manager_ssn) REFERENCES EMPLOYEE (ssn) ON DELETE SET NULL
);

ALTER TABLE EMPLOYEE
	ADD CONSTRAINT fk_dno FOREIGN KEY (dno) REFERENCES DEPARTMENT (department_number);

CREATE TABLE DEPT_LOCATIONS (
	department_number INT,
    location VARCHAR(125),
    PRIMARY KEY (department_number, location),
    FOREIGN KEY (department_number) REFERENCES DEPARTMENT (department_number)
);

CREATE TABLE PROJECT (
	p_number INT PRIMARY KEY,
	p_name VARCHAR(55) NOT NULL,
    location VARCHAR(125),
    department_number INT,
    FOREIGN KEY (department_number) REFERENCES DEPARTMENT (department_number)
);

CREATE TABLE WORKS_ON (
	essn VARCHAR(9),
    project_number INT,
    hours DECIMAL,
    PRIMARY KEY (essn, project_number),
    FOREIGN KEY (essn) REFERENCES EMPLOYEE (ssn),
    FOREIGN KEY (project_number) REFERENCES PROJECT (p_number)
);

CREATE TABLE DEPENDENT (
	essn VARCHAR(9),
    dependent_name VARCHAR(60),
    sex CHAR(6) NOT NULL,
    birth_date DATE,
    relationship VARCHAR(30) NOT NULL,
    PRIMARY KEY (essn, dependent_name),
    FOREIGN KEY (essn) REFERENCES EMPLOYEE (ssn)
);