/*
Victor Wei - vywei@calpoly.edu
Eddie Kesicki - ekesicki@calpoly.edu
*/

CREATE TABLE Rooms (
    RoomId VARCHAR(3),
    roomName VARCHAR(50),
    beds INT,
    bedType VARCHAR(20),
    maxOccupancy INT,
    basePrice INT,
    decor VARCHAR(20),
    PRIMARY KEY (RoomId)
);

CREATE TABLE Reservations (
    Code INT,
    Room VARCHAR(3) REFERENCES rooms(RoomId) ON DELETE CASCADE,
    CheckIn DATE,
    CheckOut Date,
    Rate FLOAT(6,2),
    LastName VARCHAR(30),
    FirstName VARCHAR (30),
    Adults INT,
    Kids INT,
    PRIMARY KEY (Code)
);
