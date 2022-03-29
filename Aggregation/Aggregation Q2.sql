select *
from Student S1
where (select count(*) from Student S2
		where S2.sID <> S1.sID and S2.GPA = S1.GPA) =
	  (select count(*) from Student S2
		where S2.sID <> S1.sID and S2.sizeHS = S1.sizeHS);