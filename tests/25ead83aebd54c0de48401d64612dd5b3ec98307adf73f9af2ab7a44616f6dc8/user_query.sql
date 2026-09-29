CREATE TABLE t1(x);
CREATE TEMP TRIGGER tr1 BEFORE INSERT ON t1 BEGIN
  SELECT 1,2,3;
END;
CREATE TEMP TABLE t1(x);
INSERT INTO main.result
  SELECT 'main', type, name, tbl_name FROM main.sqlite_schema WHERE name='t1';
INSERT INTO main.result
  SELECT 'temp', type, name, tbl_name FROM temp.sqlite_schema
  WHERE name IN ('t1','tr1');