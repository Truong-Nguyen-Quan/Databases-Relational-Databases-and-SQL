select cName
from Apply
group by cName
having count(distinct sID) < 5;