PRAGMA recursive_triggers=OFF;
UPDATE tbl SET c = 10;
DELETE FROM tbl;
CREATE TABLE tbl2(a, b, c);
CREATE TRIGGER after_tbl2_insert AFTER INSERT ON tbl2 BEGIN
  UPDATE tbl SET c = 10;
  INSERT INTO tbl2 VALUES (new.a, new.b, new.c);
END;
INSERT INTO tbl2 VALUES (1, 2, 3);
CREATE VIEW tbl_view AS SELECT * FROM tbl;
CREATE TRIGGER tbl_view_insert INSTEAD OF INSERT ON tbl_view BEGIN
  SELECT CASE
    WHEN (new.a = 1) THEN RAISE(ROLLBACK, 'View rollback')
    WHEN (new.a = 2) THEN RAISE(IGNORE)
    WHEN (new.a = 3) THEN RAISE(ABORT, 'View abort')
  END;
END;
INSERT INTO tbl_view VALUES(2, 2, 3);