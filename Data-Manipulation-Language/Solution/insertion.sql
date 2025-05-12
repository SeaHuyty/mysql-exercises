USE university;

INSERT INTO department (department_name, department_code, college, office_no, office_phone) VALUES
('Computer Science', 'CS', 'Engineering', '101', '555-1111'),
('Electrical Engineering', 'EE', 'Engineering', '102', '555-2222'),
('Mechanical Engineering', 'ME', 'Engineering', '103', '555-3333'),
('Biology', 'BIO', 'Science', '104', '555-4444'),
('Physics', 'PHYS', 'Science', '105', '555-5555'),

-- Insert minor department
('Mathematics', 'MATH', 'Science', 'Room 201', '555-1001'),
('Business', 'BUS', 'Business', 'Room 203', '555-1003'),
('Chemistry', 'CHEM', 'Science', 'Room 204', '555-1004'),
('Statistics', 'STAT', 'Science', 'Room 205', '555-1005');

INSERT INTO student (student_id, first_name, last_name, birthdate, sex, class, degree_program, current_address, current_phone, parent_phone,
city, state, zip, major_department, minor_department) VALUES
(1, 'John', 'Doe', '2001-03-15', 'M', 'Senior', 'CS', '123 Maple St', '555-1234', '555-5678', 'New York', 'NY', '10001', 'Computer Science', 'Mathematics'),
(2, 'Jane', 'Smith', '2002-06-22', 'F', 'Junior', 'EE', '456 Oak St', '555-9876', '555-5432', 'Los Angeles', 'CA', '90001', 'Electrical Engineering', 'Physics'),
(3, 'Sam', 'Brown', '2000-09-10', 'M', 'Senior', 'ME', '789 Pine St', '555-6543', '555-3210', 'Chicago', 'IL', '60601', 'Mechanical Engineering', 'Business'),
(4, 'Emily', 'Davis', '2003-01-05', 'F', 'Sophomore', 'BIO', '321 Cedar St', '555-2222', '555-8888', 'Houston', 'TX', '77001', 'Biology', 'Chemistry'),
(5, 'Michael', 'Johnson', '2001-12-20', 'M', 'Senior', 'CS', '654 Birch St', '555-4444', '555-6666', 'Seattle', 'WA', '98101', 'Computer Science', 'Statistics');

INSERT INTO course (course_number, course_name, course_description, hours, course_level, department) VALUES
('101', 'Database Systems', 'Intro to Databases', 3.0, 'Undergrad', 'Computer Science'),
('102', 'Digital Circuits', 'Logic Circuits', 3.0, 'Undergrad', 'Electrical Engineering'),
('103', 'Thermodynamics', 'Heat Transfer Principles', 3.0, 'Undergrad', 'Mechanical Engineering'),
('104', 'Genetics', 'Introduction to Genetics', 3.0, 'Undergrad', 'Biology'),
('105', 'Quantum Mechanics', 'Quantum Theory Basics', 3.0, 'Undergrad', 'Physics');

INSERT INTO section (section_number, section_year, semester, instructor, course_number) VALUES
(1, 2024, 'Spring', 'Dr. Smith', '101'),
(2, 2024, 'Fall', 'Dr. Johnson', '102'),
(3, 2025, 'Spring', 'Dr. Lee', '103'),
(4, 2025, 'Fall', 'Dr. Miller', '104'),
(5, 2025, 'Spring', 'Dr. Brown', '105');

INSERT INTO grade_report (letter_grade, numeric_grade) VALUES
('A', 4.0),  
('B+', 3.5),  
('B', 3.0), 
-- Insert more
('A-', 3.8), 
('C+', 2.5);

INSERT INTO student_grades (student_id, course_number, section_year, semester, section_number, grade) VALUES
(1, '101', 2024, 'Spring', 1, 'A'),  
(2, '102', 2024, 'Fall', 2, 'B+'),  
(3, '103', 2025, 'Spring', 3, 'B'),  
(4, '104', 2025, 'Fall', 4, 'A-'),  
(5, '105', 2025, 'Spring', 5, 'C+'); 