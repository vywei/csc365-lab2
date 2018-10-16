/* Edward Kesicki
   ekesicki@calpoly.edu

   Victor Wei
   vywei@calpoly.edu
*/
/* Add a new column to the list of students to represent their GPA */
ALTER TABLE list 
    ADD GPA DECIMAL(3, 2);

/* Keep in the database only students in grade 5 or 6 */
DELETE FROM list WHERE Grade < 5;
 
/* Add a new classroom, number 120 teacher AP-MAWR GAWAIN */
INSERT INTO teachers (LastName, FirstName, Classroom)
    VALUES (GAWAIN, AP_MAWR, 120);

/* move Jeffry Flachs, Tawanna Huang and Emile Grunin to classroom 120 */
UPDATE list SET Classroom = 120 WHERE FirstName = JEFFRY AND LastName = FLACHS;
UPDATE list SET Classroom = 120 WHERE FirstName = TAWANNA AND LastName = HUANG;
UPDATE list SET Classroom = 120 WHERE FirstName = EMILE AND LastName = GUNIN;

/* Set the GPA of sixth graders to 3.25 */
UPDATE list SET GPA = 3.25 WHERE Grade = 6;

/* Set the GPA of fifth graders from room 109 to 2.9 */
UPDATE list SET GPA = 2.9 WHERE Grade = 5 AND Classroom = 109;

/* Set the GPA of fifth graders from room 120 to 3.5 */
UPDATE list SET GPA = 3.5 WHERE Grade = 5 AND Classroom = 120;

/* set the GPA of CHET MACIAG to 4.0 */
UPDATE list SET GPA = 4.0 WHERE FirstName = CHET AND LastName = MACIAG;

/* set the GPA of AL GERSTEIN to be 0.3 higher than what it is */
UPDATE list SET GPA = GPA + 0.3 WHERE FirstName = AL AND LastName = GERSTEIN;

/* set the GPAs of TAWANA HUANG and ELVIRA JAGNEAUX to be 10% higher */
UPDATE list SET GPA = GPA * 1.1 WHERE FirstName = TAWANNA AND LastName = HUANG;
UPDATE list SET GPA = GPA * 1.1 WHERE FirstName = ELVIRA AND LastName = JAGNEAUX;

/* outputting students by GPA, Grade, and LastName */
SELECT * FROM list
ORDER BY GPA, Grade, LastName;

/* outputting teachers */
SELECT * 
FROM teachers;