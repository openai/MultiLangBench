CREATE TABLE t1(x INTEGER PRIMARY KEY, y);
INSERT INTO t1 VALUES(1, hex(zeroblob(200)));
INSERT INTO t1 VALUES(2, hex(zeroblob(200)));
INSERT INTO t1 VALUES(3, hex(zeroblob(200)));
INSERT INTO t1 VALUES(4, hex(zeroblob(200)));