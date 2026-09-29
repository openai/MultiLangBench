PRAGMA max_page_count=1000;
UPDATE abc SET a=(SELECT max_page_count FROM pragma_max_page_count) WHERE rowid=1;