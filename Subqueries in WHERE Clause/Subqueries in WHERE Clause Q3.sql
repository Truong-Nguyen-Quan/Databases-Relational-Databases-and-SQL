select cName, state
from College C1
where exists (select * from College C2 
				where C2.state = C1.state and C2.cName <> C1.cName)