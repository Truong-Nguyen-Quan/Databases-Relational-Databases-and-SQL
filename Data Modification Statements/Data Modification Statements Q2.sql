insert into Apply 
select sID, 'Carnegie Mellon', 'CS', null
from Student
where sID not in (select sID from Apply)