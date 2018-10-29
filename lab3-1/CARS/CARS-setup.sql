/*
Victor Wei - vywei@calpoly.edu
Eddie Kesicki - ekesicki@calpoly.edu
*/

CREATE TABLE CarNames (
    MakeId INT,
    Model VARCHAR(20),
    MakeDescription VARCHAR(50),
    PRIMARY KEY (MakeId)
);

CREATE TABLE CarMakers (
    Id INT,
    Maker VARCHAR(20),
    Country INT,
    FullName VARCHAR(50),
    PRIMARY KEY (Id)
);

CREATE TABLE CarData (
    Id INT references CarNames (MakeId),
    MPG INT,
    Cylinders INT,
    Edispl INT,
    Horsepower INT,
    cWeight INT,
    Accelerate INT, 
    cYear INT,
    PRIMARY KEY (Id)
);

CREATE TABLE Continents (
    ContId INT,
    Continent VARCHAR(20),
    PRIMARY KEY (ContId)  
);

CREATE TABLE Countries (
    CountryId INT,
    CountryName VARCHAR(30),
    Continent INT references Continents (ContId),
    PRIMARY KEY (CountryId)
);

CREATE TABLE ModelList ( 
    ModelId INT,
    Maker INT references CarMakers (Id),
    Model VARCHAR(30),
    PRIMARY KEY (ModelId)
);



