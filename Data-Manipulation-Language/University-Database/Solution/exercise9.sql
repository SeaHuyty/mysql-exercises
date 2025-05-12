-- Rename the course with CNumber = 101 to ’Advanced Databases’. 
UPDATE course
SET course_name = 'Advanced Databases'
WHERE course_number = '101';