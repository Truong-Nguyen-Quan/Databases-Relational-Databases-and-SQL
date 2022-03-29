select CS.avgGPA - NonCS.avgGPA
from (select avg(GPA) as avgGPA from Student
		where sID in (
			select sID from Apply where major = 'CS')) as CS,
	 (select avg(GPA) as avgGPA from Student
		where sID not in (
			select sID from Apply where major = 'CS')) as nonCS;