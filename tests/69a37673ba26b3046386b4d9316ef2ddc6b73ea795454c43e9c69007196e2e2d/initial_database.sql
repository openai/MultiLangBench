CREATE TABLE t1(a, b);
CREATE TABLE t2(c INTEGER PRIMARY KEY, d);
INSERT INTO t1 VALUES('hello', 'world');
INSERT INTO t2 VALUES(14, 'fourteen');
ANALYZE sqlite_schema;
INSERT INTO sqlite_stat1 VALUES('t2','idx1','6 6');
ANALYZE sqlite_schema;