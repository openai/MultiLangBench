CREATE VIRTUAL TABLE t1 USING fts3(content, tokenize simple);
INSERT INTO t1(rowid, content) VALUES(1, 'running and jumping');
CREATE TABLE result(rid INTEGER);