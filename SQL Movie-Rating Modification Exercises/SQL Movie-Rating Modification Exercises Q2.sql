update Movie
set year = year + 25
where mID in 
(select distinct mID
from Rating
group by mID
having avg(stars) >= 4)