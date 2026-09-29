CREATE TABLE t501(a INTEGER PRIMARY KEY, b);
CREATE TABLE t502(x INTEGER PRIMARY KEY, y);
INSERT INTO sqlite_stat1(tbl,idx,stat) VALUES('t501',null,'1000000');
INSERT INTO sqlite_stat1(tbl,idx,stat) VALUES('t502',null,'1000');
ANALYZE sqlite_master;