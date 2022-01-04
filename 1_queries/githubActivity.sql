/* Once a student graduates, the career services department needs to keep track of their activity on Github. If a graduate has not linked their Github account, they need to be contacted. */

SELECT name, email, phone 
FROM students 
WHERE end_date IS NOT NULL 
AND github IS NULL;