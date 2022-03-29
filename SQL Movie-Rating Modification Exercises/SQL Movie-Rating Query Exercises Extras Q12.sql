select distinct director, title, stars
from (select director, title, stars from Movie, Rating where Rating.mID = Movie.mID and director is not NULL) as Q12
where not exists (select * 
					from (select director, title, stars from Movie, Rating where Rating.mID = Movie.mID and director is not NULL) as M 
					where Q12.director = director and Q12.stars < stars)