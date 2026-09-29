-- in3-4.1
CREATE TABLE t3(a, b, c);
CREATE UNIQUE INDEX t3_i ON t3(b, a);
INSERT INTO t3 VALUES(1, 'numeric', 2);
INSERT INTO t3 VALUES(2, 'text', 2);
INSERT INTO t3 VALUES(3, 'real', 2);
INSERT INTO t3 VALUES(4, 'none', 2);