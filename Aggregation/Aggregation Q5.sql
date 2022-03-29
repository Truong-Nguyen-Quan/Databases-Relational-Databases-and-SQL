select cName, major, min(GPA) as 'min(GPA)', max(GPA) as 'max(GPA)'
from Student, Apply
where Student.sID = Apply.sID
group by cName, major
order by cName