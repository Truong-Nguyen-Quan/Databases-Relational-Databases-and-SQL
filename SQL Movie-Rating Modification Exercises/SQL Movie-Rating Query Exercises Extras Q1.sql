select name
from Reviewer
where rID in (select rID from Rating where mID = 101)