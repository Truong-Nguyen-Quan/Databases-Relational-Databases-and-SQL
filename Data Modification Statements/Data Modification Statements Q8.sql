update Apply
set major = 'CSE'
where major = 'EE' 
and sID in 
(select sID from Student where GPA >= all (select GPA from Student where sID in (select sID from Apply where major = 'EE')))