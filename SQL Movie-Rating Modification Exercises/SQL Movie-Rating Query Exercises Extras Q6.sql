select name, title, stars
from Reviewer, Movie, Rating R1
where not exists (select * from Rating R2 where R1.stars > R2.stars) and Reviewer.rID = R1.rID and Movie.mID = R1.mID