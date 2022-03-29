delete from College
where College.cName not in (select cName from Apply where major = 'CS')