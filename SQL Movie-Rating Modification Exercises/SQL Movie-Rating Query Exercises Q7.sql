select distinct title, stars
from Movie M, Rating R1
where R1.mID = M.mID and not exists (select * from Rating R2 where R1.mID = R2.mID and R1.stars < R2.stars)
order by title