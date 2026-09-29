CREATE TABLE t3(a, b, c, d, PRIMARY KEY(c, b)) WITHOUT ROWID;
INSERT INTO t3 VALUES('f', 1, 1, 'o');
INSERT INTO t3 VALUES('o', 2, 1, 't');
INSERT INTO t3 VALUES('t', 1, 2, 't');
INSERT INTO t3 VALUES('t', 2, 2, 'f');
CREATE INDEX t3i1 ON t3(d);
CREATE INDEX t3i2 ON t3(a);
CREATE TABLE sfi_result_3_0 AS
SELECT c||'.'||b AS value FROM t3 WHERE a='t' OR d='t';