select sName, GPA, decision
from Student, Apply
where Student.sID = Apply.sID 
	and sizeHS < 1000 and major = 'CS' and cName = 'Stanford';