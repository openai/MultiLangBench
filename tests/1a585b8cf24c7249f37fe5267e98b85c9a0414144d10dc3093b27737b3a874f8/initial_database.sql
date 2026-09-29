PRAGMA page_size = 1024;
CREATE TABLE t1(x, y, z);
INSERT INTO t1 VALUES('1', replace(hex(zeroblob(5000)),'0','a'), '2');
INSERT INTO t1 VALUES('2', replace(hex(zeroblob(5000)),'0','b'), '4');
INSERT INTO t1 VALUES('3', replace(hex(zeroblob(5000)),'0','c'), '6');
CREATE TABLE t2(x);