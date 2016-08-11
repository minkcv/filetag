select f.*
from tagmap tm, files f, tags t
where tm.tagid = t.id
and (t.name in ($sql_andtags))
and f.id = tm.fileid
and f.id not in (select f.id from files f, tagmap tm, tags t
    where f.id = tm.fileid and tm.tagid = t.id and t.name in ($sql_nottags))
group by f.id

-- where $sql_andtags is a list of tags the files must have and $sql_nottags is a list of tags the files must not have
