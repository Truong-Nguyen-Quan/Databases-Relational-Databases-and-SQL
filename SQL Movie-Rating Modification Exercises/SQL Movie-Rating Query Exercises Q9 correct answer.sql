select avg(BF.average) - avg(AF.average)
from
(select avg(cast(stars as float)) as average
from Movie, Rating
where (Movie.mID = Rating.mID) and year < 1980
group by Rating.mID) as BF,
(select avg(cast(stars as float)) as average
from Movie, Rating
where (Movie.mID = Rating.mID) and year > 1980
group by Rating.mID) as AF