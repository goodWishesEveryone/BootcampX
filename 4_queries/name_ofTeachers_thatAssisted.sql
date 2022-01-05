/*  
Name of all teachers that performed an assistance request during a cohort.
This query needs to select data for a cohort with a specific name, use 'JUL02' for the cohort's name and order by the instructor's name.
*/

SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;