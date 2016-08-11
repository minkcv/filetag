select t.name from tags t, tagmap tm 
where t.id = tm.tagid and tm.fileid = $current_file_id

-- where $currnt_file_id is the id of the file you want to find other tags for
