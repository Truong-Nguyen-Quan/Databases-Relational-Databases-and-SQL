select H1.name, H1.grade, H2.name, H2.grade
from Highschooler H1, Highschooler H2, Likes L
where H1.ID = L.ID1 and H2.ID = L.ID2 and L.ID2 not in (select ID1 from Likes)