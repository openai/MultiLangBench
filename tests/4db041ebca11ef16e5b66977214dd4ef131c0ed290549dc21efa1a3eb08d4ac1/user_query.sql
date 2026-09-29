PRAGMA legacy_alter_table = 1;
CREATE TABLE temp_capture(type, name, tbl_name, sql);
CREATE TRIGGER temp.r1 AFTER INSERT ON main.t2 BEGIN
  INSERT INTO t1(a) VALUES(new.w);
END;
CREATE TEMP TABLE t2(x);
ALTER TABLE main.t2 RENAME TO t3;
INSERT INTO temp_capture SELECT type, name, tbl_name, sql FROM sqlite_temp_master;