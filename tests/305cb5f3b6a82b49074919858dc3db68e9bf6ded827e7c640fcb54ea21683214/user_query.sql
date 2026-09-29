PRAGMA auto_vacuum=OFF;
PRAGMA page_size=1024;
CREATE TABLE t1(x);
INSERT INTO t1 VALUES(replace(hex(zeroblob(200)), '00', '0123456789'));