delete from Highschooler
where ID in
(select ID
from Highschooler
where grade = 12)