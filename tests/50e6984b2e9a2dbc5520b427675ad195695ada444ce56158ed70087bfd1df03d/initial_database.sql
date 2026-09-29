PRAGMA page_size=1024;
PRAGMA auto_vacuum=0;
CREATE TABLE t1(x);
INSERT INTO t1 VALUES(zeroblob(20));
INSERT INTO t1 VALUES(zeroblob(20));
INSERT INTO t1 VALUES(zeroblob(20));
INSERT INTO t1 VALUES(zeroblob(20));
INSERT INTO t1 VALUES(zeroblob(20));