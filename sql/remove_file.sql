select id from files where filepath = $filepath
-- get the id of the file based on filepath

delete from tagmap where fileid = $fileid
-- delete all mappings that match the file id

delete from files where id = $fileid
-- delete the file from the file table
