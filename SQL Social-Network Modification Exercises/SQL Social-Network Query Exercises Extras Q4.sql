select COUNT(distinct ID1) + COUNT(distinct ID2)
from Friend
where ID2 in (select ID2
from Friend
where ID1 = 1709) and ID1 <> 1709