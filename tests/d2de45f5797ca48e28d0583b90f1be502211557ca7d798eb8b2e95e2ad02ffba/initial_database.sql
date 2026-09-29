CREATE VIRTUAL TABLE t1 USING fts3(content);
INSERT INTO t1(rowid, content) VALUES(1, 'hello world');
INSERT INTO t1(rowid, content) VALUES(2, 'hello there');
INSERT INTO t1(rowid, content) VALUES(3, 'cruel world');
BEGIN TRANSACTION;
INSERT INTO t1(rowid, content) VALUES(4, 'false world');
INSERT INTO t1(rowid, content) VALUES(5, 'false door');
COMMIT TRANSACTION;
CREATE TABLE observed_world(rid INTEGER);