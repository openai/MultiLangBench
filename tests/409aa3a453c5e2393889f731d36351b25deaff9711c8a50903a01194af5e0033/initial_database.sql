CREATE VIRTUAL TABLE t1 USING fts3(content, tokenize porter);
INSERT INTO t1(rowid, content) VALUES(1, 'running and jumping');
INSERT INTO t1(rowid, content) VALUES(2, 'abcdefghijklmnopqrstuvwyxz');
CREATE TABLE result(rid INTEGER, snip TEXT);