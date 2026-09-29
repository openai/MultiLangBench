CREATE VIRTUAL TABLE ft USING fts3(one, two);
INSERT INTO ft VALUES('', 'foo');
INSERT INTO ft VALUES('foo', 'foo');