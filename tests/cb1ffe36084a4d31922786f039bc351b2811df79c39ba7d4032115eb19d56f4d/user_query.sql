CREATE TABLE t1(k, a, b);
INSERT INTO t1 VALUES('a', 1, 'one');
INSERT INTO t1 VALUES('b', 2, 'two');
INSERT INTO t1 VALUES('c', 3, 'three');
INSERT INTO t1 VALUES('d', 4, 'four');
CREATE TABLE log(x);
CREATE VIEW v1 AS SELECT k, a, b AS __hidden__b FROM t1;
CREATE TRIGGER tr1 INSTEAD OF UPDATE ON v1 BEGIN
  INSERT INTO log VALUES(
    '('||old.a||','||old.__hidden__b||')->('||new.a||','||new.__hidden__b||')'
  );
END;