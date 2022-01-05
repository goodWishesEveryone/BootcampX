/*
To see the current average time it takes to complete an assistance request.
In Postgres, we can subtract two timestamps to find the duration between them. 
*/

SELECT avg(completed_at - started_at) AS average_assistance_request_duration
FROM assistance_requests;