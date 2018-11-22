/*
    Victor Wei - vywei@calpoly.edu
    Edward Kesicki - ekesicki@calpoly.edu
*/


-- Q1 (Victor)
select g.Flavor, round(avg(g.Price),2) AveragePrice,
    count(Food) NumPastries
from goods g
group by g.Flavor
having count(g.Food) > 3
order by AveragePrice;


-- Q2 (Victor)
select dayofweek(r.saleDate) as DayOfWeek,
    count(distinct r.RNumber) as NumberReceipts,
    count(i.Item) as NumberPastries,
    round(sum(g.Price),2) as Revenue
from goods g, items i, receipts r
where g.GId = i.Item and i.Receipt = r.RNumber
    and r.saleDate >= '2007-10-08' and r.saleDate <= '2007-10-14'
group by dayofweek(r.saleDate);


-- Q3 (Victor)
select c.FirstName, c.LastName
from customers c
where c.CId not in (
        select c2.CId
        from customers c2, receipts r, items i, goods g
        where c2.CId = r.Customer and r.RNumber = i.Receipt
        and i.Item = g.GId and g.Food = 'Twist'
    );


-- Q4 (Victor)
select g.Flavor, count(*) as Num, c.CId
from customers c, receipts r, items i, goods g
where c.CId = r.Customer and r.RNumber = i.Receipt and i.Item = g.GId
    and g.Food = 'Cake'
group by g.Flavor, c.CId
having Num >= (
    select max(c.count)
    from (
        select count(i2.Item) as count
        from customers c2, receipts r2, items i2, goods g2
        where c2.CId = r2.Customer and r2.RNumber = i2.Receipt
            and i2.Item = g2.GId and g2.Food = 'Cake' and g2.Flavor = 'Casino'
        group by c2.CId
    )as c
);


-- Q5 (Eddie)



-- Q6 (Eddie)



-- Q7 (Eddie)
