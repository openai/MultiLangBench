ATTACH ':memory:' AS aux;
CREATE TABLE aux.t2(a, b);
CREATE TEMP TABLE tt2(a, b);
CREATE TEMP TRIGGER tr2 AFTER INSERT ON aux.t2 BEGIN
  INSERT INTO tt2 VALUES(new.a, new.b);
END;
INSERT INTO main.result
  SELECT 'aux', type, name, tbl_name FROM aux.sqlite_schema WHERE name='t2';
INSERT INTO main.result
  SELECT 'temp', type, name, tbl_name FROM temp.sqlite_schema
  WHERE name IN ('tt2','tr2');