CREATE TABLE t1(aa, bb);
INSERT INTO t1 VALUES('maroon','meal');
CREATE TABLE t2(cc, dd, ee, x VARCHAR(100));
INSERT INTO t2(cc,dd,ee) VALUES('maroon',1,'one');
INSERT INTO t2(cc,dd,ee) VALUES('maroon',2,'two');
INSERT INTO t2(cc,dd,ee) VALUES('maroon',0,'zero');
CREATE INDEX t2ddee ON t2(dd,ee);
CREATE INDEX t2cc ON t2(cc);
ANALYZE;