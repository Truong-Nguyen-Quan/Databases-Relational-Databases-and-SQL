select name
from Reviewer
where rID in (select rID from Rating where ratingDate is NULL and stars is not NULL)