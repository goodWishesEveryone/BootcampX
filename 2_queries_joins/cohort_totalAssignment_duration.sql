/*
The total amount of time that all students from a specific cohort have spent on all assignments.  
This should work for any cohort but use FEB12 for now.
*/
SELECT sum(asub.duration) AS total_duration
FROM assignment_submissions AS asub
JOIN students ON students.id = asub.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'FEB12';