select sum(cast(Q3.count as float))/(select count(ID) from Highschooler)
from (select COUNT(ID2) as count
		from Friend
		group by ID1) as Q3