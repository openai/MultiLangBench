CREATE TABLE log(t TEXT);
CREATE TABLE t1(x INTEGER PRIMARY KEY, y, z UNIQUE);
CREATE INDEX t1y ON t1(y);
INSERT INTO t1 VALUES(21, 'i', 'one');
INSERT INTO t1 VALUES(22, 'ii', 'two');
INSERT INTO t1 VALUES(23, 'iii', 'three');
INSERT INTO t1 VALUES(24, 'iv', 'four');
CREATE TABLE x1(o, n);
INSERT INTO x1 VALUES(1, 11), (2, 12), (3, 13), (4, 14), (11, 21), (12, 22), (13, 23), (14, 24), (21, 31), (22, 32), (23, 33), (24, 34);