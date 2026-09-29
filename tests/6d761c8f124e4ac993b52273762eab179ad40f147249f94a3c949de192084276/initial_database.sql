-- e_vacuum-3.2.1.4
CREATE TABLE t(x);
INSERT INTO t VALUES('x'),('y'),('z');
DELETE FROM t WHERE x='y';