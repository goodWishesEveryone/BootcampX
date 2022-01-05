/*  
To see the number of assignments that each day has and the total duration of assignments for each day.
Select the day, number of assignments, and the total duration of assignments.
Order the results by the day.
*/

SELECT day, count(id) AS number_of_assignments, sum(duration) AS duration
FROM assignments 
GROUP BY day
ORDER BY day;