/*  Since this query needs to work with any specific cohort, just us any number for the cohort_id */

SELECT id, name 
FROM students 
WHERE cohort_id = 1
ORDER BY name;