SELECT students.name AS student, avg(asub.duration) AS average_assignment_duration
FROM students 
JOIN assignment_submissions AS asub ON students.id = asub.student_id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC; 
