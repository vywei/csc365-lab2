-- Q1
SELECT Campus
FROM campuses
WHERE county = 'Los Angeles'
ORDER BY Campus ASC;

-- Q2
SELECT d.YR, d.Degrees
FROM degrees as d, campuses as c
WHERE d.Campusid = c.Id and c.Campus = 'California Maritime Academy'
ORDER BY d.YR ASC;

-- Q3
SELECT c.Campus, d.Name, e.UGrad, e.Grad
FROM discEnr as e, disciplines as d, campuses as c
where (c.Campus = 'California State Polytechnic University-Pomona' OR
    c.Campus = 'California Polytechnic State University-San Luis Obispo') AND
    c.Id = e.CampusId and e.DiscId = d.Id AND (d.Name = 'Mathematics' or
    d.Name = 'Engineering' or d.Name = 'Computer and Info. Sciences');

-- Q4
SELECT c.Campus, ag.Grad as Agriculture, bio.Grad as BiologicalSciences
FROM campuses as c, discEnr as ag, discEnr as bio,
    disciplines as d1, disciplines as d2
WHERE c.Id = ag.CampusId and c.Id = bio.CampusId
    and (ag.DiscId = d1.Id and d1.Name = 'Agriculture')
    and (bio.DiscId = d2.Id and d2.Name = 'Biological Sciences')
ORDER BY c.Campus, ag.Grad ASC;\

-- Q5
SELECT c.Campus, d.Name as Discipline
FROM campuses as c, disciplines as d, discEnr as e
WHERE c.Id = e.CampusId and e.DiscId = d.Id and e.YR = 2004 and
    e.Grad >= 3*e.UGrad
ORDER BY c.Campus, d.Name ASC;

-- Q6
SELECT en.YR, fees.Fee*en.FTE, fees.Fee*en.FTE/f.FTE
from enrollments as en, faculty as f, fees, campuses as c
where c.Campus = 'Fresno State University' and c.Id = en.CampusId and f.CampusId = c.Id and fees.CampusId = c.Id and en.YR <= 2004 and en.YR >= 2002
    and f.YR = en.YR and fees.YR = en.YR;

-- Q7
SELECT c.Campus, e.FTE as Students, f.FTE as Faculty, e.FTE/f.FTE as StudentToFaculty
FROM campuses as c, enrollments as e, faculty as f, enrollments as sj,
    campuses as csj
WHERE sj.CampusId = csj.Id and csj.Campus = 'San Jose State University'
    and sj.YR = 2003 and
    c.Id = e.CampusId and c.Id = f.CampusId and e.FTE > sj.FTE and e.YR = f.YR
    and e.YR = 2003
ORDER BY StudentToFaculty;
