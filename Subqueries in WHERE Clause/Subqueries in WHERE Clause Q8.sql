select sID, sName, sizeHS
from Student S1
where exists (select * from Student S2
				where S2.sizeHS < S1.sizeHS)