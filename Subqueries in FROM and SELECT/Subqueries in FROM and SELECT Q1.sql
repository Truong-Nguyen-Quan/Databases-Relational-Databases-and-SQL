select *
from (select sID, sName, GPA, GPA*(sizeHS/1000) as scaledGPA
from Student) as G
where abs(G.scaledGPA - GPA) > 1;