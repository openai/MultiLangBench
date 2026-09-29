ATTACH DATABASE '' AS aux;
CREATE TABLE IF NOT EXISTS aux.t1(a, b);
CREATE TEMPORARY TRIGGER tr1 DELETE ON t1 BEGIN
  DELETE FROM t1;
END;
CREATE TABLE temp.t1(a, b);
INSERT INTO main.result(kind, object_name)
  SELECT 'aux-table', name FROM aux.sqlite_schema
  WHERE type='table' AND name='t1';
INSERT INTO main.result(kind, object_name)
  SELECT 'temp-table', name FROM temp.sqlite_schema
  WHERE type='table' AND name='t1';
INSERT INTO main.result(kind, object_name)
  SELECT 'temp-trigger', name FROM temp.sqlite_schema
  WHERE type='trigger' AND name='tr1';