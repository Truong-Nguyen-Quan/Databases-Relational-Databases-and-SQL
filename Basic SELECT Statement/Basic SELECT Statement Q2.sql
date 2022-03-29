select distinct sName, major
from Student, Apply
where Student.sID = Apply.sID;