select Student.sID, count(distinct cName)
from Student left outer join Apply on (Student.sID = Apply.sID)
group by Student.sID