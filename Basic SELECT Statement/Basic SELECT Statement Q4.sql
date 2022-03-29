select distinct College.cName
from College, Apply
where College.cName = Apply.cName
	and enrollment > 20000 and major = 'CS';