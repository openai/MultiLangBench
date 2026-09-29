CREATE TABLE t2(x,y);
INSERT INTO t2(x,y) VALUES('a',1),('a',2),('a',3),('a',4);
INSERT INTO t2(x,y) VALUES('b',1),('c',2),('d',3),('e',4);
CREATE INDEX t2xy ON t2(x,y);