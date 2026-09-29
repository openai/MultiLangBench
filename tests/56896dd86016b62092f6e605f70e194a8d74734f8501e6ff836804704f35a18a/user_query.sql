CREATE TABLE t1(a, b);
CREATE TEMP TABLE tt1(a, b);
CREATE TEMP TRIGGER tr1 AFTER INSERT ON t1 BEGIN
  INSERT INTO tt1 VALUES(new.a, new.b);
END;
INSERT INTO main.result
  SELECT type, name, tbl_name FROM temp.sqlite_schema
  WHERE name IN ('tt1','tr1');