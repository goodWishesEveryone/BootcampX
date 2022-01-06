/* 
Total amount of time that a student has spent on all assignments.  This should work for any student but use 'Ibrahim Schimmel' for now.
*/

SELECT sum(asub.duration) AS total_duration
FROM assignment_submissions AS asub
JOIN students ON students.id = asub.student_id
WHERE students.name = 'Ibrahim Schimmel';