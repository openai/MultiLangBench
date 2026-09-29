BEGIN TRANSACTION;
INSERT INTO t1(rowid, content) VALUES(4, 'false world');
INSERT INTO t1(rowid, content) VALUES(5, 'false door');
COMMIT TRANSACTION;