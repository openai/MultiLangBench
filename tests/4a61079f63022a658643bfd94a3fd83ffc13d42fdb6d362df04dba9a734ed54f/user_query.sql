CREATE TABLE t1(x);
CREATE TEMP TRIGGER tr1 BEFORE INSERT ON t1 BEGIN SELECT 1,2,3; END;
INSERT INTO main.result
  SELECT type, name, tbl_name FROM temp.sqlite_schema WHERE name='tr1';