CREATE TABLE t1(a, b);
INSERT INTO t1 VALUES('a','a'),('a','b'),('a','c'),('b','a'),('b','b'),('b','c'),('a','a'),('b','b'),('A','A'),('B','B');
CREATE INDEX i1 ON t1(b, a);