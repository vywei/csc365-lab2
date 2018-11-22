/*
    Victor Wei - vywei@calpoly.edu
    Edward Kesicki - ekesicki@calpoly.edu
*/


-- Q1 (Victor)
select flights.Source
from flights
group by flights.Source
having count(*) = 17
order by flights.Source;


-- Q2 (Victor)
select count(distinct f1.Source) as NumAirports
from flights f1, flights f2
where f1.Destination = f2.Source and
    f2.Destination = 'ANP' and f1.Source <> 'ANP';


-- Q3 (Eddie)



-- Q4 (Eddie)
