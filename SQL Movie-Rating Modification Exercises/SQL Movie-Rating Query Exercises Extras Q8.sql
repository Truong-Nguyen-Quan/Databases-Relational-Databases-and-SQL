select name
from Rating, Reviewer
where Rating.rID = Reviewer.rID
group by Rating.rID, name
having COUNT(Rating.rID) >= 3