CREATE TABLE t1(a, b, c);
CREATE INDEX i1 ON t1(a, b);
CREATE INDEX i2 ON t1(b COLLATE nocase, c COLLATE nocase);
INSERT INTO t1 VALUES('a', 'b', 'c'),('A', 'B', 'C'),('a', 'b', 'c'),('A', 'B', 'C');