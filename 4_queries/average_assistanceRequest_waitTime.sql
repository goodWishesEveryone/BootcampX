/*
To know the average amount of time that students are waiting for an assistance request. This is the duration between an assistance request being created, and it being started. Calculate the average time it takes to start an assistance request.
*/

SELECT avg(started_at - created_at) AS average_assistance_request_duration
FROM assistance_requests;