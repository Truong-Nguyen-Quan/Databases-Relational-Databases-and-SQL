select distinct College.cName, state, GPA
from College, Apply, Student
where College.cName = Apply.cName
and Apply.sID = Student.sID
and GPA >= all
			(select GPA from Student, Apply
				where Student.sID = Apply.sID
					and Apply.cName = College.cName)