select title
from Movie
where mID not in (select mID from Rating where rID = 205)