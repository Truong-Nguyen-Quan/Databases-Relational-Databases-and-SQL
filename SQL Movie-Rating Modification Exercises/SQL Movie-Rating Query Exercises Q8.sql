select title, spreadRating
from Movie, (select mID, max(stars) - min(stars) as spreadRating
				from Rating
				group by mID) as Q8
where Movie.mID = Q8.mID
order by spreadRating desc, title