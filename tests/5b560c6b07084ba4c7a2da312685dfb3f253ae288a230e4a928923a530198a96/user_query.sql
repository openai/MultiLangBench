PRAGMA legacy_alter_table = 1;
CREATE TABLE t1(a);
CREATE TABLE t2(w);
CREATE TRIGGER temp.r1 AFTER INSERT ON main.t2 BEGIN
  INSERT INTO t1(a) VALUES(new.w);
END;
CREATE TEMP TABLE t2(x);
CREATE TABLE temp_capture AS SELECT type, name, tbl_name, sql FROM sqlite_temp_master;