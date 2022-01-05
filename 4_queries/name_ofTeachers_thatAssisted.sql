/*  
Name of all teachers that performed an assistance request during a cohort.
This query needs to select data for a cohort with a specific name, use 'JUL02' for the cohort's name and order by the instructor's name.
*/

SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort
FROM assistance_requests AS ar, students, teachers, cohorts
WHERE ar.student_id = students.id 
AND ar.teacher_id = teachers.id
AND cohorts.id = students.id 
AND cohorts.name = 'JUL02'
ORDER BY teacher;