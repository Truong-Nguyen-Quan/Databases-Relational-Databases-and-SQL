select H1.name, H1.grade, H2.name, H2.grade
from Highschooler H1, Highschooler H2, Likes
where H1.ID = ID1 and H2.ID = ID2 and ABS(H1.grade - H2.grade) >= 2