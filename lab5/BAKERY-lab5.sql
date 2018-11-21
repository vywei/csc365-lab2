/*
    Victor Wei - vywei@calpoly.edu
    Edward Kesicki - ekesicki@calpoly.edu
*/


-- Q1
select c.FirstName, c.LastName
from customers c, items i, goods g, receipts r
where g.GId = i.Item and
    i.Receipt = r.RNumber and
    r.Customer = c.CId and
    g.Food = 'Croissant'
group by r.RNumber, c.FirstName, c.LastName
having count(DISTINCT g.Flavor) > 1
order by c.LastName;


-- Q2
(select r.saleDate
from receipts r, customers c
where r.Customer = c.CId and
    c.FirstName = 'ALMETA' and c.LastNAme = 'DOMKOWSKI')
union
(select r.saleDate
from receipts as r, items as i, goods as g
where r.RNumber = i.Receipt and i.Item = g.GId and
    g.Flavor = 'Gongolais' and g.Food = 'Cookie')
order by saleDate;

-- Q3
select ROUND(sum(g.price), 2) as total
from customers c, items i, goods g, receipts r
where g.GId = i.Item and
    i.Receipt = r.RNumber and
    r.Customer = c.CId and
    date_format(r.saleDate, '%M %Y') = 'October 2007' and
    c.FirstName = 'NATACHA' and c.LastName = 'STENZ';

-- Q4
select ROUND(sum(g.price), 2) as total
from items i, goods g, receipts r
where g.GId = i.Item and
    i.Receipt = r.RNumber and
    date_format(r.saleDate, '%M %Y') = 'October 2007' and
    g.Flavor = 'Chocolate';
