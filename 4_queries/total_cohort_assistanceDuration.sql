/*
To see the total amount of time being spent on an assistance request for each cohort. 
This number will tell us how much time is being spent on assistance requests for each cohort.
Select the cohort's name and the total duration the assistance requests.
Order by total_duration.
*/

SELECT 
  cohorts.name AS cohort, 
  sum(ar.completed_at - ar.started_at) AS total_duration
FROM students
INNER JOIN cohorts ON cohorts.id = students.cohort_id 
INNER JOIN assistance_requests AS ar ON ar.student_id = students.id
GROUP BY cohorts.name
ORDER BY total_duration;