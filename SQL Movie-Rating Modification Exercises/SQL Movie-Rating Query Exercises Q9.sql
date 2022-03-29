select BF.average - AF.average
from
(select avg(avg1) as average
from Movie, (select mID, avg(cast(stars as float)) as avg1
		from Rating
		group by mID) as Q9
where Movie.mID = Q9.mID and year < 1980) as BF,
(select avg(avg1) as average
from Movie, (select mID, avg(cast(stars as float)) as avg1
		from Rating
		group by mID) as Q9
where Movie.mID = Q9.mID and year > 1980) as AF