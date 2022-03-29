select name, grade from Highschooler as H
where not exists
(select *
from Highschooler H1, Highschooler H2, Friend F
where H1.ID = F.ID1 and H2.ID = F.ID2 and H1.grade <> H2.grade and H.ID = F.ID1)
order by grade, name