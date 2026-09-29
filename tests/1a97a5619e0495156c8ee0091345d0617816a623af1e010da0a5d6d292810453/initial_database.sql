CREATE TABLE t1(a);
INSERT INTO t1 VALUES('Ebed-malech');
CREATE TABLE x(a);
CREATE TABLE result_220(a);
PRAGMA writable_schema=ON;
CREATE VIRTUAL TABLE sqlite_stat1 USING fts5(a);