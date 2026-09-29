CREATE TABLE link(f, t);
INSERT INTO link VALUES(5, 2), (20, 10), (2, 1);
CREATE TRIGGER tr3 BEFORE DELETE ON t1 BEGIN
  UPDATE t1 SET b=coalesce(old.b,old.c) FROM main.link WHERE a=t AND old.a=f;
END;
DELETE FROM t1 WHERE a=2;