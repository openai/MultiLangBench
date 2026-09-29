DELETE FROM ft WHERE one = 'foo';
CREATE TABLE result AS SELECT rowid AS docid, offsets(ft) AS off FROM ft WHERE ft MATCH 'foo';