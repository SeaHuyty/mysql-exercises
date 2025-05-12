-- Delete the grade record of student 2 in course 102 from the STUDENT GRADES table. 
DELETE FROM student_grades
WHERE student_id = 2 AND course_number = '102';