/*
Get important data about each assistance request.
Select the teacher's name, student's name, assignment's name, and the duration of each assistance request.  
Subtract completed_at by started_at to find the duration.
Order by the duration of the request.
*/

-- SOLUTION 1: Query using WHERE clause instead of INNER JOIN

-- SELECT 
--   teachers.name AS teacher, 
--   students.name AS student, 
--   assignments.name AS assignment, 
--   assistance_requests.completed_at - assistance_requests.started_at AS duration
-- FROM teachers, students, assistance_requests, assignments
-- WHERE assistance_requests.student_id = students.id 
-- AND assistance_requests.teacher_id = teachers.id
-- AND assistance_requests.assignment_id = assignments.id
-- ORDER BY duration; 


-- SOLUTION 2:  Query using INNER JOIN

SELECT 
  teachers.name AS teacher, 
  students.name AS student, 
  assignments.name AS assignment, 
  ar.completed_at - ar.started_at AS duration
FROM  assistance_requests AS ar
INNER JOIN students ON ar.student_id = students.id 
INNER JOIN teachers ON ar.teacher_id = teachers.id
INNER JOIN assignments ON ar.assignment_id = assignments.id;
ORDER BY duration;