PRAGMA legacy_alter_table = 1;
CREATE TABLE temp_capture(name, sql);
CREATE VIEW temp.ttt AS SELECT main.txx.a, txx.b, one.b, main.one.a FROM txx AS one, txx;
ALTER TABLE txx RENAME TO "t xx";
INSERT INTO temp_capture SELECT name, sql FROM sqlite_temp_master WHERE name='ttt';