select name, grade
from Highschooler
where not exists (select * from Likes where ID = ID1 or ID = ID2)
order by grade, name