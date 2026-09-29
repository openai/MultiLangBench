CREATE TABLE t1(x INTEGER PRIMARY KEY, y TEXT UNIQUE);
INSERT INTO t1 VALUES (1,'one'),(2,'two'),(3,'three'),(4,'four'),(5,'five'),(6,'six'),(7,'seven'),(8,'eight'),(9,'nine'),(10,'ten');
CREATE VIEW v4 AS SELECT CAST(x AS TEXT) AS c1 FROM t1 UNION SELECT y FROM t1 WHERE x BETWEEN 3 AND 5;
CREATE TABLE result2(a,b);
CREATE TRIGGER r4u INSTEAD OF UPDATE ON v4 BEGIN
  INSERT INTO result2(a,b) VALUES(old.c1, new.c1);
END;