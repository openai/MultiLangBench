PRAGMA auto_vacuum = 0;
CREATE TABLE t1(a, b, c, PRIMARY KEY(b, c)) WITHOUT ROWID;
INSERT INTO t1 VALUES(1, 2, 3);
INSERT INTO t1 VALUES(4, 5, 6);
INSERT INTO t1 VALUES(7, 8, 9);
PRAGMA writable_schema = 1;
DELETE FROM sqlite_master WHERE name='t1';