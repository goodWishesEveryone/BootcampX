SELECT students.name AS student, avg(asub.duration) AS average_assignment_duration, avg(a.duration) AS average_estimated_duration
FROM students 
JOIN assignment_submissions AS asub ON students.id = asub.student_id
JOIN assignments AS a ON a.id = asub.assignment_id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(asub.duration) < avg(a.duration)
ORDER BY average_assignment_duration; 

