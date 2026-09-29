-- memdb-2.1
CREATE TABLE t3(x TEXT); INSERT INTO t3 VALUES('a'),('b'),('c'); CREATE INDEX t3x ON t3(x);