PRAGMA legacy_alter_table = 1;
CREATE TABLE t9(a, b, c);
CREATE TABLE t10(a, b, c);
CREATE TEMP TABLE t9(a, b, c);
CREATE TRIGGER temp.t9t AFTER INSERT ON temp.t9 BEGIN
  INSERT INTO t10 VALUES(new.a, new.b, new.c);
END;
INSERT INTO temp.t9 VALUES(1, 2, 3);
SELECT * FROM t10;