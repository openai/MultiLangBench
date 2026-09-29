PRAGMA max_page_count=1000;
UPDATE abc SET a=(SELECT count(*) FROM sqlite_schema) WHERE rowid=1;