CREATE DATABASE university;
USE university;

CREATE TABLE student (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    birthdate DATE,
    sex CHAR(1) NOT NULL,
    class VARCHAR(10),
    degree_program VARCHAR(35),
    current_address VARCHAR(40),
    current_phone VARCHAR(15),
    parent_phone VARCHAR(15),
    city VARCHAR(20),
    state VARCHAR(20),
    zip VARCHAR(10),
    major_department VARCHAR(40),
    minor_department VARCHAR(40) NULL
);

CREATE TABLE department (
    department_name VARCHAR(40) PRIMARY KEY,
    department_code VARCHAR(10) NOT NULL,
    college VARCHAR(40),
    office_no VARCHAR(40),
    office_phone VARCHAR(10)
);

ALTER TABLE student
    ADD CONSTRAINT FOREIGN KEY (major_department) REFERENCES department(department_name) ON DELETE SET NULL,
    ADD CONSTRAINT FOREIGN KEY (minor_department) REFERENCES department(department_name) ON DELETE SET NULL;

CREATE TABLE course (
    course_number VARCHAR(9) PRIMARY KEY,
    course_name VARCHAR(30) NOT NULL,
    course_description VARCHAR(125),
    hours DECIMAL(3,1),
    course_level VARCHAR(10),
    department VARCHAR(40),
    FOREIGN KEY (department) REFERENCES department(department_name) ON DELETE SET NULL
);

CREATE TABLE section (
    section_number INT,
    section_year YEAR,
    semester VARCHAR(10),
    instructor VARCHAR(30),
    course_number VARCHAR(9),
    PRIMARY KEY (section_number, semester, section_year, course_number),
    FOREIGN KEY (course_number) REFERENCES course(course_number) ON DELETE CASCADE
);

CREATE TABLE grade_report (
    numeric_grade DECIMAL(3,1),
    letter_grade VARCHAR(5) PRIMARY KEY
);

CREATE TABLE student_grades (
    student_id INT,
    section_number INT,
    section_year YEAR,
    semester VARCHAR(10),
    course_number VARCHAR(9),
    grade VARCHAR(5),
    PRIMARY KEY (student_id, course_number, section_number, semester, section_year, grade),
    FOREIGN KEY (student_id) REFERENCES student(student_id) ON DELETE CASCADE,
    FOREIGN KEY (course_number) REFERENCES course(course_number),
    FOREIGN KEY (section_number, semester, section_year)
        REFERENCES section(section_number, semester, section_year)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (grade) REFERENCES grade_report(letter_grade)
);
