delete from Apply 
where sID in
(select sID 
from Apply
group by sID
having count(distinct major) > 2)