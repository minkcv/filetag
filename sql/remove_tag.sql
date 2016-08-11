delete from tagmap using tagmap join tags where tagmap.tagid = tags.id and tags.name = $removetag
-- removes all mappings that use the tag
-- where $removetag is the tag to remove

delete from tags where tags.name = $removetag
-- removes the tag from the available tags
-- where $removetag is the tag to remove
