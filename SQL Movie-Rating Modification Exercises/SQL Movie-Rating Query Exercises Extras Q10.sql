select title, average
from (select Rating.mID, title, AVG(stars) as average
		from Movie, Rating
		where Rating.mID = Movie.mID
		group by Rating.mID, title) as Q10
where not exists (select * 
					from (select Rating.mID, title, AVG(stars) as average
							from Movie, Rating
							where Rating.mID = Movie.mID
							group by Rating.mID, title) as M 
					where Q10.average < average)