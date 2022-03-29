select name, grade
from Highschooler H
where H.ID not in (select H1.ID
					from Highschooler H1, Highschooler H2, Friend F
					where H1.ID = F.ID1 and H2.ID = F.ID2 and H1.grade = H2.grade)