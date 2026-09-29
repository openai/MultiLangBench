PRAGMA encoding = 'UTF16be';
CREATE TABLE t1(a, b);
INSERT INTO t1(rowid,a) VALUES (1,x'00'),(2,3);
CREATE TABLE result(v);