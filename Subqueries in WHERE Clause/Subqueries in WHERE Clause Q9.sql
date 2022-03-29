select sID, sName
from Student
where sID = any (select sID from Apply where major = 'CS')
	and not sID = any (select sID from Apply where major = 'EE')