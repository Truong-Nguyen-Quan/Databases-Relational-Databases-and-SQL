select H1.name, H1.grade, H2.name, H2.grade
from Highschooler H1, Highschooler H2, Likes as L1
where H1.ID = L1.ID1 and H2.ID = L1.ID2 and H1.name < H2.name and exists (select * 
																		from Likes 
																		where L1.ID1 = Likes.ID2 and L1.ID2 = Likes.ID1)