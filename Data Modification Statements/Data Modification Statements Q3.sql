insert into Apply
select sID, 'Carnegie Mellon', 'EE', 'Y'
from Student
where sID in (select sID from Apply where major = 'EE' and decision = 'N')