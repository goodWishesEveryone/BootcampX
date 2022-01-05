SELECT count(*) AS total_assistances, students.name AS name
FROM assistance_requests, students
WHERE assistance_requests.student_id = students.id 
AND name = 'Elliot Dickinson'
GROUP BY name;