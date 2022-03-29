select sName as name from Student
union all
select cName as name from College
order by name