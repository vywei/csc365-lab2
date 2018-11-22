/*
    Victor Wei - vywei@calpoly.edu
    Edward Kesicki - ekesicki@calpoly.edu
*/

/*FROM carsData as cd, carNames as cn, modelList as m, carMakers as cm, countries, continents
WHERE cd.Id = cn.Id and cn.Model = m.Model and m.Maker = cm.Id and cm.Country = countries.Id and countries.Continent = continents.Id*/

-- Q1 (Victor)
select cm.Maker, max(cd.MPG) as MPG,
    round(avg(cd.Accelerate),2) as AvgAcceleration
from carsData as cd, carNames as cn, modelList as m,
    carMakers as cm, countries
where cd.Id = cn.Id and cn.Model = m.Model and m.Maker = cm.Id
    and cm.Country = countries.Id and countries.Name = 'japan'
group by cm.Maker
order by MPG;


-- Q2 (Victor)
select cm.Maker, count(*) as NumCars
from carsData as cd, carNames as cn, modelList as m,
    carMakers as cm, countries
where cd.Id = cn.Id and cn.Model = m.Model and m.Maker = cm.Id
    and cm.Country = countries.Id and countries.Name = 'usa'
    and cd.Cylinders = 4 and cd.Weight < 4000 and Accelerate < 14
group by cm.Maker
order by NumCars desc;


-- Q3 (Victor)
select cn.Description, cd.YearMade
from carsData as cd, carNames as cn
where cd.Id = cn.Id and cd.MPG >= (
    select max(cd2.MPG)
    from carsData cd2
);


-- Q4 (Eddie)



-- Q5 (Eddie)



-- Q6 (Eddie)



-- Q7 (Eddie)
