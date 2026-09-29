PRAGMA legacy_alter_table = 1;
CREATE TABLE temp_capture(name, sql);
CREATE VIEW temp.vv AS SELECT one.a, one.b, t2.a, t2.b FROM t1 AS one, t2;
ALTER TABLE t2 RENAME TO one;
INSERT INTO temp_capture SELECT name, sql FROM sqlite_temp_master WHERE name='vv';