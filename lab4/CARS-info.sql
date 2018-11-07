-- Q1
SELECT n.Description, d.YearMade
FROM carNames as n, carsData as d
WHERE n.Id = d.Id AND Model = 'renault'
ORDER BY d.YearMade DESC;

-- Q2
SELECT n.Description, d.YearMade
FROM carNames as n, carsData as d
WHERE n.Id = d.Id and Model = 'Volvo' and YearMade <= 1981 and YearMade >= 1977
ORDER BY d.YearMade ASC;

-- Q3
SELECT m.FullName, c.Name
FROM carMakers as m, countries as c, continents as con
WHERE m.Country = c.Id and c.Continent = con.Id and con.Name = 'asia'
ORDER BY m.FullName ASC;

-- Q4
SELECT n.Description, m.FullName
FROM carNames as n, carMakers as m, carsData as d
WHERE d.Id = n.Id and n.Model = m.Maker and d.MPG > 20 and Accelerate < 15.0;

-- Q5
SELECT m.FullName, coun.Name
FROM carMakers as m, countries as coun, carsData as d,
    carNames as n, continents as con
WHERE n.Model = m.Maker and n.Id = d.Id and m.Country = coun.Id and
    d.Weight < 2000 and d.YearMade >= 1979 and d.YearMade <= 1981 and
    con.Id = coun.Continent and con.Name <> 'europe';

-- Q6
SELECT n.Description, (d.Weight / d.Horsepower) as Ratio
FROM carNames as n, carMakers as m, carsData as d
WHERE m.Maker = 'saab' and n.Model = m.Maker and n.Id = d.Id
ORDER BY Ratio DESC;
