CREATE TABLE t4(x,y,z,PRIMARY KEY('x' ASC, "y" ASC));
CREATE TABLE result(a,b1x,b1y,b1z,b2x,b2y,b2z);
INSERT INTO result SELECT * FROM t2 LEFT JOIN t4 b1 LEFT JOIN t4 b2 ON b2.x=b1.x AND b2.y IN (b1.y);