CREATE TABLE campuses (
    campusID INT,
    campusName VARCHAR(50),
    location VARCHAR(50),
    county VARCHAR(50),
    year INT,
    PRIMARY KEY (campusID));

CREATE TABLE csuFees (
    campusID INT,
    year INT,
    campusFee INT,
    PRIMARY KEY (campusID, year)),
    FOREIGN KEY (campusID) references campuses(campusID) ON DELETE CASCADE,
    UNIQUE (campusID));

CREATE TABLE degrees (
    campusID INT, 
    year INT,
    numDegrees INT,
    PRIMARY KEY (campusID, year)
    FOREIGN KEY (campusID) references campuses(campusID) ON DELETE CASCADE);

CREATE TABLE disciplineEnrollments (
    campusID INT,
    disciplineID INT,
    year INT,
    numUndergrads INT,
    numGrads INT,--number of currently enrolled graduate students
    PRIMARY KEY (campusID, disciplineID),
    FOREIGN KEY (campusID) references campuses(campusID) ON DELETE CASCADE,
    FOREIGN KEY (disciplineID) references disciplines(disciplineID) ON DELETE CASCADE);

CREATE TABLE disciplines (
    disciplineID INT PRIMARY KEY,
    disciplineName VARCHAR(50));

CREATE TABLE enrollments (
    campusID INT,
    year INT,
    totalEnrollmentForYear INT,
    fullTimeEnrollmentForYear INT,
    FOREIGN KEY (campusID) references campuses(campusID) ON DELETE CASCADE);

CREATE TABLE faculty (
    campusID INT,
    year INT,
    numFaculty INT,
    FOREIGN KEY (campusID) references campuses(campusID) ON DELETE CASCADE);
