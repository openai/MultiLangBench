CREATE TABLE t1(x);
CREATE TEMP TRIGGER tr1 BEFORE INSERT ON t1 BEGIN
  SELECT raise(ABORT, 'error');
END;
ATTACH ':memory:' AS aux;
INSERT INTO main.result
  SELECT 'main:' || type || ':' || name || ':' || tbl_name
  FROM main.sqlite_schema WHERE name='t1';
INSERT INTO main.result
  SELECT 'temp:' || type || ':' || name || ':' || tbl_name
  FROM temp.sqlite_schema WHERE name='tr1';
INSERT INTO main.result
  SELECT 'aux-objects=' || count(*) FROM aux.sqlite_schema;