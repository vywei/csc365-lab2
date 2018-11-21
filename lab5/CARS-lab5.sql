/*
    Victor Wei - vywei@calpoly.edu
    Edward Kesicki - ekesicki@calpoly.edu
*/

/*
FROM carsData as cd, carNames as cn, modelList as m, carMakers as cm, countries, continents
WHERE cd.Id = cn.Id, cn.Model = m.Id, m.Maker = cm.Id, cm.Country = countries.Id, countries.Continent = continents.Id
*/


-- Q1
select cn.description as Description, cd.YearMade, cn.Model
from carsData cd, carNames cn, carsData cd2, carNames cn2
where cd.Id = cn.Id and cd2.Id = cn2.Id and
    cd.YearMade > 1980 and
    cd2.YearMade = 1982 and cn2.Description = 'honda civic' and
    cd.MPG > cd2.MPG
order by cd.MPG DESC;

-- Q2
select ROUND(avg(cd.Horsepower), 2) as Average, max(cd.Horsepower) as Max,
    min(cd.Horsepower) as Min
from carsData cd, carNames cn
where cd.Id = cn.Id and
    cd.Cylinders = 4 and
    cn.Model = 'renault' and
    cd.YearMade >= 1971 and
    cd.YearMade <= 1976;

-- Q3

select count(cn.Id) as CountCars
from carsData cd, carNames cn, carsData cd2, carNames cn2
where cd.Id = cn.Id and cd2.Id = cn2.Id and
    cd.YearMade = 1971 and
    cd2.YearMade = 1972 and
    cn2.Description = 'volvo 145e (sw)' and
    cd.Accelerate < cd2.Accelerate;

-- Q4

select count(DISTINCT cn.Model) as CountManufacturers
from carsData cd, carNames cn
where cd.Id = cn.Id and
    cd.Weight > 4000;
