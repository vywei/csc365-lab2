/* Edward Kesicki
   ekesicki@calpoly.edu

   Victor Wei
   vywei@calpoly.edu
*/
/*Keep in the table storing the technical characteristics about the cars that satisfy:/*

/*DELETING (Negation of entire statement)*/
/*negation of ((vehicles made in 1979 or 1980) AND MPG <= 20) OR
    (vehicles MPG >= 26 AND Horsepower > 110) OR
    (Cylinders = 8 AND Accelerate < 10)*/
DELETE FROM CarData WHERE ((cYear != 1979 AND cYear != 1980) OR MPG < 20) AND
    (MPG < 26 OR Horsepower <= 110) AND
    (Cylinders != 8 OR Accelerate >= 10)

/*Run the SQL query*/
SELECT *
FROM CarData
ORDER BY cYear, Id;

/*Remove from the car data table all attributes except car id, car year, 
acceleration, MPG, and number of cylinders*/
ALTER TABLE CarData
    DROP Edispl, Horsepower, cWeight;

/*Remove from the car data table information about all cars with 
5 cylinders or fewer*/
DELETE FROM CarData 
WHERE Cylinders <= 5;

/*Run the SQL query*/
SELECT *
FROM CarData
ORDER BY cYear, Id;


