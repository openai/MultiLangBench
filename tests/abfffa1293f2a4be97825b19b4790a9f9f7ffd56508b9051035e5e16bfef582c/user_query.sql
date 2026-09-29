-- cache-2.0
PRAGMA auto_vacuum=OFF; PRAGMA journal_mode=DELETE; CREATE TABLE t1(a, b); CREATE TABLE t2(c, d); INSERT INTO t1 VALUES('x', 'y'); INSERT INTO t2 VALUES('i', 'j');