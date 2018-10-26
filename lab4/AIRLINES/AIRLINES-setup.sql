/*
Victor Wei - vywei@calpoly.edu
Eddie Kesicki - ekesicki@calpoly.edu
*/
CREATE TABLE airlines(
    Id INT,
    Airline VARCHAR(30),
    Abbreviation VARCHAR(30),
    Country VARCHAR(20),
    PRIMARY KEY (Id)
);

CREATE TABLE airports100(
    City VARCHAR(20),
    AirportCode VARCHAR(3),
    AirportName VARCHAR(60),
    Country VARCHAR(30),
    CountryAbbrev VARCHAR(5),
    PRIMARY KEY (AirportCode)
);

CREATE TABLE flights(
    Airline INT,
    FlightNo INT,
    SourceAirport VARCHAR(3) REFERENCES Airports100(AirportCode) ON DELETE CASCADE,
    DestAirport VARCHAR(3) REFERENCES Airports100(AirportCode) ON DELETE CASCADE,
    PRIMARY KEY (Airline, FlightNo)
);