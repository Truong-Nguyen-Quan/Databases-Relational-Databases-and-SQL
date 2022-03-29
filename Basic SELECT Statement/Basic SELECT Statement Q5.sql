select distinct Student.sID, sName, GPA, Apply.cName, enrollment
from Student, College, Apply
where Student.sID = Apply.sID and College.cName = Apply.cName
order by GPA desc