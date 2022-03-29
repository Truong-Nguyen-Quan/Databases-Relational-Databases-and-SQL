select name, title, stars, ratingDate
from Reviewer, Movie, Rating
where Rating.rID = Reviewer.rID and Rating.mID = Movie.mID
order by name, title, stars