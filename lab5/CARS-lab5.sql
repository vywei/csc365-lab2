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
from carsData as cd, carNames as cn
where cd.Id = cn.Id and
    cd.YearMade > 1980 and
    cd.MPG > (
        select MPG
        from carsData, carNames
        where carsData.Id = carNames.Id and
        YearMade = 1982 and
        Description = 'honda civic'
    );

-- Q2
select ROUND(avg(cd.Horsepower), 2) as Average, max(cd.Horsepower) as Max,
    min(cd.Horsepower) as Min
from carsData as cd, carNames as cn
where cd.Id = cn.Id and
    cd.Cylinders = 4 and
    cn.Model = 'renault' and
    cd.YearMade >= 1971 and
    cd.YearMade <= 1976;

-- Q3
select count(*) as CountCars
from (
    select cn.Id
    from carsData as cd, carNames as cn
    where cd.Id = cn.Id and
        cd.YearMade = 1971 and
        cd.Accelerate < (
            select carsData.Accelerate
            from carsData, carNames
            where carsData.Id = carNames.Id and
            carsData.YearMade = 1972 and
            carNames.Description = 'volvo 145e (sw)'
        )
    ) as id;

-- Q4
select count(DISTINCT Model) as CountManufacturers
from (
    select cn.Model
    from carsData as cd, carNames as cn
    where cd.Id = cn.Id and
        cd.Weight > 4000
) as models;
