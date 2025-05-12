-- Change the grade of student 4 in course 104 to ’A’. 
UPDATE student_grades
SET grade = 'A'
WHERE student_id = 4 AND course_number = '104';