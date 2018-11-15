/*
    Victor Wei - vywei@calpoly.edu
    Edward Kesicki - ekesicki@calpoly.edu
*/

/* Find all pairs of students with the same first name. 
   Report each name exactly once, first and last names and grades
*/

SELECT DISTINCT s1.firstName, s1.lastName, s1.grade
FROM list s1, list s2
WHERE s1.firstName = s2.firstName AND
      s1.lastName != s2.lastName;

/* Find all first-grade students who are not taught by OTHA MOYER
   Report their first and last names in alphabeticla last name order
*/

SELECT s.firstName, s.lastName
FROM list s, teachers t 
WHERE s.grade = 1 AND
      t.firstName != 'OTHA' AND
      t.lastName != 'MOYER' AND
      s.classroom = t.classroom
ORDER BY s.lastName;

/* Report the total number of 3rd and 4th graders at the school */

SELECT COUNT(*)
FROM list s
WHERE s.grade = 3 OR s.grade = 4;

/* Find and report the number of students taught by 'LORIA ONDERSMA' */

SELECT COUNT(*)
FROM list s, teachers t 
WHERE t.firstName = 'LORIA' AND
      t.lastName = 'ONDERSMA' AND
      s.classroom = t.classroom;