CREATE TABLE t1(x, y, UNIQUE(x, y));
INSERT INTO t1 VALUES('one', 'two');
SELECT * FROM t1 WHERE x='one';
PRAGMA integrity_check;