CREATE TABLE t1(a INTEGER PRIMARY KEY,b,c,d);
INSERT INTO t1(a,b,c,d) VALUES
  (1,1,2,3),
  (2,2,3,4),
  (3,1,2,4),
  (4,2,3,5),
  (5,3,4,6),
  (6,4,5,9);
CREATE TABLE t2(x INTEGER PRIMARY KEY, y);
INSERT INTO t2(x,y) VALUES(1,6),(2,5),(3,4),(4,3),(5,2),(6,1);