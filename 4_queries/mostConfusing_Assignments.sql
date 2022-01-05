/*  To know which assignments are causing the most assistance requests. 
List each assignment with the total number of assistance requests with it.
Select the assignment's id, day, chapter, name and the total assistances.
Order by total assistances in order of most to least.
*/

SELECT a.id, a.name, a.day, a.chapter, count(ar.assignment_id) AS total_requests
FROM assignments AS a
JOIN assistance_requests AS ar ON ar.assignment_id = a.id
GROUP BY a.id
ORDER BY total_requests DESC;