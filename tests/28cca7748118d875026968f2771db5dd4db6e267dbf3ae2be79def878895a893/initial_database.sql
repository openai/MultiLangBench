PRAGMA encoding = 'UTF-16le';
CREATE VIRTUAL TABLE t1 USING fts3(content);
INSERT INTO t1 (rowid, content) VALUES(1, 'one');
INSERT INTO t1 (rowid, content) VALUES(2, 'two');
INSERT INTO t1 (rowid, content) VALUES(3, 'trois');