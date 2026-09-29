CREATE TABLE t1 (x, y);
INSERT INTO t1 VALUES (3, 'a'),(1, 'a'),(2, 'b'),(2, 'a'),(3, 'b'),(1, 'b');
CREATE INDEX i1 ON t1(x, y);