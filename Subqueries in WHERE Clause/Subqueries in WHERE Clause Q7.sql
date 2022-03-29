select cName
from College C1
where not enrollment <= any (select enrollment from College C2
					where C2.cName <> C1.cName)