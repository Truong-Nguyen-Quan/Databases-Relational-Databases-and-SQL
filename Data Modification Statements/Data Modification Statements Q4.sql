delete from Student where
Student.sID in
(select sID from Apply
group by sID
having count(distinct major) > 2)