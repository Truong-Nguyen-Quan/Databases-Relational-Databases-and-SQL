select H.name, H.grade
from Highschooler H, Likes L
where H.ID = L.ID2
group by L.ID2, H.name, H.grade
having COUNT(ID2) >= 2