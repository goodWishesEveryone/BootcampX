/*  
To know which teachers actually assisted students during any cohort, and how many assistances they did for that cohort.  
*/

SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort, count(ar.teacher_id) AS total_assistances 
FROM assistance_requests AS ar, students, teachers, cohorts
WHERE ar.student_id = students.id 
AND ar.teacher_id = teachers.id
AND cohorts.id = students.id 
AND cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teacher;