select H1.name, H1.grade, H2.name, H2.grade, H3.name, H3.grade
from Highschooler H1, Highschooler H2, Highschooler H3, Likes L, Friend F1, Friend F2
where L.ID1 = F1.ID1 and L.ID2 = F2.ID1 and F1.ID2 = F2.ID2 and H1.ID = L.ID1 and H2.ID = L.ID2 and H3.ID = F1.ID2 and not exists 
(select * from Friend where L.ID1 = Friend.ID1 and L.ID2 = Friend.ID2)