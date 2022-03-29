select name, title
from Reviewer, Movie, (select R1.rID, R1.mID
							from Rating R1, Rating R2
							where R1.rID = R2.rID and R1.mID = R2.mID 
									and R1.stars < R2.stars and R2.ratingDate > R1.ratingDate) as Q6
where Reviewer.rID = Q6.rID and Movie.mID = Q6.mID 