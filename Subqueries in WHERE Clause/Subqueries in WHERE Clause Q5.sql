select sName, GPA
from Student
where GPA >= all (select GPA from Student)