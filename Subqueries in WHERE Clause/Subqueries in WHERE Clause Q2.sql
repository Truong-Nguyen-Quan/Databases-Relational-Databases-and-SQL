select sID, sName
from Student
where sID in (select sID from Apply where major = 'CS')
	and sID not in (select sID from Apply where major = 'EE')