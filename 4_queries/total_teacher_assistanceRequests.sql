SELECT count(*) AS total_assistances, teachers.name AS name
FROM assistance_requests, teachers
WHERE assistance_requests.teacher_id = teachers.id 
AND name = 'Waylon Boehm'
GROUP BY teachers.name;