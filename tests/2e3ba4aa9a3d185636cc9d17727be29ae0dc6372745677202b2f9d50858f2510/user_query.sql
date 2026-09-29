CREATE TRIGGER t1 AFTER INSERT ON tbl BEGIN
  INSERT INTO log VALUES('after insert', new.a, new.b);
END;
CREATE TRIGGER i1 AFTER DELETE ON tbl BEGIN
  INSERT INTO log VALUES('after delete', old.a, old.b);
END;