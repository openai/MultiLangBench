CREATE VIRTUAL TABLE t3 USING fts3(content);
INSERT INTO t3(rowid, content) VALUES(1, 'hello world');
CREATE TABLE fts3aj_result(matched_rowid INTEGER NOT NULL);