/*
Victor Wei - vywei@calpoly.edu
Eddie Kesicki - ekesicki@calpoly.edu
*/

CREATE TABLE list (
    LastName VARCHAR(40),
    FirstName VARCHAR(40),
    Grade INT,
    Classroom INT references teachers(Classroom),
    PRIMARY KEY (LastName, FirstName)
);

CREATE TABLE teachers (
    LastName VARCHAR(40),
    FirstName VARCHAR(40),
    Classroom INT,
    PRIMARY KEY (Classroom)
);
