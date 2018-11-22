/*
    Victor Wei - vywei@calpoly.edu
    Edward Kesicki - ekesicki@calpoly.edu
*/


-- Q1 (Victor)
select Grade, count(distinct Classroom) NumClassrooms,
       count(distinct FirstName, LastName) NumStudents
from list
group by Grade
order by NumClassrooms desc, Grade asc;

-- Q2 (Victor)
select max(LastName) as LastName, Classroom
from list
where Grade = '4'
group by Classroom
order by Classroom;


-- Q3 (Victor)
select t.FirstName, t.LastName, count(*) NumStudents
from teachers t, list l
where t.Classroom = l.Classroom
group by t.Classroom
having count(*) >= ALL (
    select count(*)
    from list
    group by Classroom
);


-- Q4 (Eddie)



-- Q5 (Eddie)



-- Q6 (Eddie)
