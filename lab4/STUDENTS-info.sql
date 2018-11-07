/*
Victor Wei - vywei@calpoly.edu
Eddie Kesicki - ekesicki@calpoly.edu
*/

/* Find all students in classroom 111,
   list FirstName and Lastname, order by Lastname
*/

SELECT FirstName, LastName
FROM list
WHERE Classroom = 111
ORDER BY LastName; 

/* For each classroom, report the grade taught in it
   Report classroom and grade, in descending order by classroom
*/

SELECT DISTINCT Classroom, Grade
FROM list
ORDER BY Classroom DESC;

/* Find all teachers who teach fifth grade
   Report first and last name and classroom
   Order by classroom number
*/

SELECT DISTINCT t.FirstName, t.LastName, t.Classroom
FROM teachers t, list l
WHERE t.Classroom = l.Classroom 
    AND l.Grade = 5
ORDER BY t.Classroom;

/* Find all students taught by 'OTHA MOYER'
   Report first and last names of students, sorted by last 
*/

SELECT l.FirstName, l.LastName
FROM teachers t, list l
WHERE t.Classroom = l.Classroom
    AND t.Lastname = 'MOYER'
ORDER BY l.LastName;

/* For each teacher teaching K-3, report the grade they teach
   Report each name exactly once
   Sort by grade and teacher's last name
*/

SELECT DISTINCT t.FirstName, t.LastName, l.Grade
FROM teachers t, list l
WHERE t.Classroom = l.Classroom 
    AND (l.Grade = 0  OR l.Grade = 1 OR l.Grade = 2 OR l.Grade = 3)
ORDER BY l.Grade, t.LastName;