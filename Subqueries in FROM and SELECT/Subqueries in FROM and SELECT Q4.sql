select cName, state,
	(select distinct sName
	from  Apply, Student
	where College.cName = Apply.cName
	and Apply.sID = Student.sID) as sName
from College