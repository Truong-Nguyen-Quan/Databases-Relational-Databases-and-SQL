select H1.name, H1.grade, H2.name, H2.grade, H3.name, H3.grade
from Highschooler H1, Highschooler H2, Highschooler H3, Likes L1, Likes L2
where L2.ID1 = L1.ID2 and L2.ID2 <> L1.ID1 and H1.ID = L1.ID1 and H2.ID = L1.ID2 and H3.ID = L2.ID2