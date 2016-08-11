select id from tags where name = $tag
-- get id of $tag

insert into tagmap values ( $fileid, $tagid )
-- add the mapping between the file and the tag into the tagmap table
