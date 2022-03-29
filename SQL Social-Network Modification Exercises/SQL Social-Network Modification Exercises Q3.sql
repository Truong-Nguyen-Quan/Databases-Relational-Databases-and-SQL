insert into Friend
select F1.ID1, F2.ID2
from Friend F1, Friend F2
where F2.ID1 = F1.ID2 and F2.ID2 <> F1.ID1 and not exists (select * from Friend where Friend.ID1 = F1.ID1 and Friend.ID2 = F2.ID2)
group by F1.ID1, F2.ID2
order by F1.ID1