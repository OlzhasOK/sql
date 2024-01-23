CREATE INDEX idx_course_id ON courses(course_id);

SELECT course_id, COUNT(student_id) AS total_students
FROM students
GROUP BY course_id;

SELECT professor_id, COUNT(DISTINCT course_id) AS total_courses
FROM professors
GROUP BY professor_id;


SELECT *
FROM students
WHERE course_id = '2';

SELECT professors.professor_id, professors.professor_name, courses.course_id, courses.course_name
FROM professors
JOIN courses ON professors.course_id = courses.course_id;
