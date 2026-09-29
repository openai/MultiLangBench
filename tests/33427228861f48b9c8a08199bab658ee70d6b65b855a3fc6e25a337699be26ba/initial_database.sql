CREATE TABLE t1(a INTEGER PRIMARY KEY, b, c);
INSERT INTO t1 VALUES(1, 4, X'1234567800');
INSERT INTO t1 VALUES(2, 'test', 8.1);
INSERT INTO t1 VALUES(3, char(10)||'  hello'||char(10)||'  world'||char(10), 8.4);