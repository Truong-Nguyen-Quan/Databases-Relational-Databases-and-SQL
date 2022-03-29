select name, grade
from Highschooler H, (select ID1, COUNT(ID2) as C1 from Friend group by ID1) as F
where H.ID = ID1 and not exists (select * from (select ID1, COUNT(ID2) as C1 from Friend group by ID1) as F1 where F.C1 < F1.C1)