-- e_vacuum-0.1
CREATE TABLE t(x);
INSERT INTO t VALUES('x'),('y'),('z');
DELETE FROM t WHERE x='y';