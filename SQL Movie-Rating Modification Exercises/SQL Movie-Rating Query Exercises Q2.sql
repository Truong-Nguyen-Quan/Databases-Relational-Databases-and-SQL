select year
from Movie
where mID in (select mID from Rating where stars = 4 or stars = 5)
order by year asc