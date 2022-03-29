delete from Rating
where exists (select *
from Movie, Rating R
where Movie.mID = R.mID and R.stars < 4 and (year < 1970 or year > 2000) and Rating.mID = R.mID and Rating.stars = R.stars)