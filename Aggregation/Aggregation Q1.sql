select *
from Student
where sID in (select sID from Apply where major = 'CS')