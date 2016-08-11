select f.id from files f, tagmap tm, tags t where f.id = tm.fileid and tm.tagid = t.id and f.filepath = $filepath and t.name = $removetag
-- where $filepath is the path of the file to have the tag removed and $removetag is the tag to be removed
-- checks if the file has the tag in the first place

delete from tagmap using tagmap join tags join files where tagmap.tagid = tags.id and tagmap.fileid = files.id and files.filepath = $filepath and tags.name = $removetag
-- where $filepath is the path of the file to have the tag removed and $removetag is the tag to be removed
-- actually removes the tag from the file
