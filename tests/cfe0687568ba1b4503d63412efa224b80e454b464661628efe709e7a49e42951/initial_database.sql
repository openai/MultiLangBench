CREATE TABLE t1(x);
INSERT INTO t1 VALUES(123);
CREATE TABLE result_150(a);
PRAGMA writable_schema=ON;
CREATE VIRTUAL TABLE sqlite_stat1 USING fts5(a);
PRAGMA writable_schema=OFF;
CREATE VIRTUAL TABLE t3 USING fts5(b);
INSERT INTO t3 VALUES('this is a test');
INSERT INTO t3(b) VALUES('Four score and seven years ago');