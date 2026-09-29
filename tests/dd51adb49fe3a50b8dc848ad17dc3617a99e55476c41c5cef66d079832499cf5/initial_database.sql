CREATE VIRTUAL TABLE t1 USING fts3(content, tokenize porter);
INSERT INTO t1(rowid, content) VALUES(1, 'running and jumping');
INSERT INTO t1(rowid, content) VALUES(2, 'abcdefghijklmnopqrstuvwyxz');
INSERT INTO t1(rowid, content) VALUES(3, 'The value is 123456789');
CREATE TABLE result(rid INTEGER, snip TEXT);