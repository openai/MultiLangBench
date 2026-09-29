CREATE VIRTUAL TABLE t1 USING fts3(content);
INSERT INTO t1(rowid, content) VALUES(1, 'this is a test');
INSERT INTO t1(rowid, content) VALUES(2, 'also a test');
CREATE TABLE result(matched_rowid INTEGER);