CREATE VIRTUAL TABLE ft USING fts3(one, two);
INSERT INTO ft VALUES('', 'foo');
INSERT INTO ft VALUES('foo', 'foo');
CREATE TABLE result AS SELECT rowid AS docid, offsets(ft) AS off FROM ft WHERE ft MATCH 'foo';