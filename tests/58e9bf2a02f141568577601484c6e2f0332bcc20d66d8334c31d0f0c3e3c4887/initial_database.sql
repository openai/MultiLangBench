CREATE TABLE t1(x INTEGER PRIMARY KEY, y TEXT UNIQUE);
INSERT INTO t1 VALUES (1,'one'),(2,'two'),(3,'three'),(4,'four'),(5,'five'),(6,'six'),(7,'seven'),(8,'eight'),(9,'nine'),(10,'ten');
CREATE VIEW v2 AS SELECT x, y FROM t1 WHERE y GLOB '*e*';
CREATE TABLE result2(a,b);
CREATE TRIGGER r2d INSTEAD OF DELETE ON v2 BEGIN
  INSERT INTO result2(a,b) VALUES(old.y, old.x);
END;