CREATE TABLE t1(a);
INSERT INTO t1 VALUES('abc'),('def'),('ghi');
CREATE TABLE t2(a);
INSERT INTO t2 VALUES('ABC'),('def'),('GHI'),('jkl');
CREATE TABLE t3(a);
INSERT INTO t3 SELECT lower(a) FROM t2;