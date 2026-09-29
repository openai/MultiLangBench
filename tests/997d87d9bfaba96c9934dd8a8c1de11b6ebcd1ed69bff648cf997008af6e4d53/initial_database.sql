CREATE TABLE t1(k int, v text);
CREATE UNIQUE INDEX x1 ON t1(k, v);
INSERT INTO t1 VALUES(0, 'abcdefghij');