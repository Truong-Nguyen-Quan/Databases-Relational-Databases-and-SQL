update Apply
set major = 'economics', decision = 'Y'
where cName = 'Carnegie Mellon' and sID in (select sID from Student where GPA < 3.6)