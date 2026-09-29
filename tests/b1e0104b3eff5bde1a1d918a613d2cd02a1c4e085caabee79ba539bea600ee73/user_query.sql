BEGIN TRANSACTION;
INSERT INTO t1(rowid, content) VALUES(10, 'second world');
INSERT INTO t1(rowid, content) VALUES(11, 'second sight');
ROLLBACK TRANSACTION;