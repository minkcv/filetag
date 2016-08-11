select * from files f where f.id not in (select fileid from tagmap)
