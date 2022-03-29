select title, AVG(stars) as average
from Rating, Movie
where Rating.mID = Movie.mID
group by Rating.mID, Movie.title
order by average desc, title