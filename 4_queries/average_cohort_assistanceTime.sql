/* 
To view the average duration of a single assistance request for each cohort.
Results ordered from shortest average to longest.
*/

SELECT 
  cohorts.name AS name, 
  avg(ar.completed_at - ar.started_at) AS average_assistance_time 
FROM students
INNER JOIN cohorts ON cohorts.id = students.cohort_id 
INNER JOIN assistance_requests AS ar ON ar.student_id = students.id
GROUP BY cohorts.name
ORDER BY average_assistance_time;