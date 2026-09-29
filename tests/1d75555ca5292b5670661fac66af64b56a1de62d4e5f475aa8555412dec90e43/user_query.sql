DELETE FROM t1;
CREATE TEMP TABLE tt1(a, b);
CREATE TEMP TRIGGER tr1 AFTER INSERT ON t1 BEGIN
  INSERT INTO tt1 VALUES(new.a, new.b);
END;
INSERT INTO main.result VALUES(1, 't1-count=' || (SELECT count(*) FROM main.t1));
INSERT INTO main.result
  SELECT 2, type || ':' || name || ':' || tbl_name
  FROM temp.sqlite_schema WHERE name IN ('tt1','tr1');