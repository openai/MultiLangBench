CREATE TABLE t1(x INTEGER PRIMARY KEY, y TEXT UNIQUE);
INSERT INTO t1 VALUES (1,'one'),(2,'two'),(3,'three'),(4,'four'),(5,'five'),(6,'six'),(7,'seven'),(8,'eight'),(9,'nine'),(10,'ten');
CREATE VIEW v2 AS SELECT x, y FROM t1 WHERE y GLOB '*e*';
CREATE TABLE result4(a,b,c,d);
CREATE TRIGGER r2u INSTEAD OF UPDATE ON v2 BEGIN
  INSERT INTO result4(a,b,c,d) VALUES(old.y, old.x, new.y, new.x);
END;