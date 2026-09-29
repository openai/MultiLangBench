CREATE TABLE t1(x INTEGER PRIMARY KEY, y TEXT UNIQUE);
CREATE TABLE t2(a INTEGER PRIMARY KEY, b INTEGER UNIQUE, c TEXT);
INSERT INTO t1 VALUES (1,'one'),(2,'two'),(3,'three'),(4,'four'),(5,'five'),(6,'six'),(7,'seven'),(8,'eight'),(9,'nine'),(10,'ten');
INSERT INTO t2 VALUES (19,103,'one'),(18,203,'two'),(17,305,'three'),(16,404,'four'),(15,504,'five'),(14,603,'six'),(13,705,'seven'),(12,805,'eight'),(11,904,'nine'),(10,1003,'ten');
CREATE VIEW v5 AS SELECT x, b FROM t1, t2 WHERE y=c;
CREATE TABLE result2(a,b);
CREATE TRIGGER r5d INSTEAD OF DELETE ON v5 BEGIN
  INSERT INTO result2(a,b) VALUES(old.x, old.b);
END;