CREATE TABLE campuses (
    Id INT,
    Campus VARCHAR(60),
    Location VARCHAR(50),
    County VARCHAR(50),
    Year INT,
    PRIMARY KEY (Id));

CREATE TABLE csuFees (
    Campus INT references campuses(Id),
    Year INT,
    CampusFee INT,
    PRIMARY KEY (Campus, Year));

CREATE TABLE degrees (
    Campus INT references campuses(Id) ON DELETE CASCADE, 
    Year INT,
    Degrees INT,
    PRIMARY KEY (Campus, Year));

CREATE TABLE disciplineEnrollments (
    Campus INT references campuses(Id) ON DELETE CASCADE,
    Discipline INT references disciplines(Id) ON DELETE CASCADE,
    Year INT,
    Undergraduate INT,
    Graduate INT,
    PRIMARY KEY (Campus, Discipline));

CREATE TABLE disciplines (
    Id INT PRIMARY KEY,
    Name VARCHAR(50));

CREATE TABLE enrollments (
    Campus INT,
    Year INT,
    TotalEnrollment_AY INT,
    FTE_AY INT,
    FOREIGN KEY (Campus) references campuses(Id) ON DELETE CASCADE,
    PRIMARY KEY (Campus, Year));

CREATE TABLE faculty (
    Campus INT,
    Year INT,
    Faculty INT,
    FOREIGN KEY (Campus) references campuses(Id) ON DELETE CASCADE,
    PRIMARY KEY (Campus, Year));
