delete from Likes
where exists
(select *
from Likes L
where exists (select * from Friend where L.ID1 = Friend.ID1 and L.ID2 = Friend.ID2)
and not exists (select * from Likes where L.ID1 = Likes.ID2 and L.ID2 = Likes.ID1) and Likes.ID1 = L.ID1 and Likes.ID2 = L.ID2)