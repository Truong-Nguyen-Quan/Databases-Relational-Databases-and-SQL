select R3.name, R4.name
from Rating R1, Rating R2, Reviewer R3, Reviewer R4
where R1.mID = R2.mID and R1.rID <> R2.rID and R3.rID = R1.rID and R4.rID = R2.rID and R3.name < R4.name
group by R3.name, R4.name