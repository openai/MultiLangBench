PRAGMA legacy_alter_table = 1;
CREATE TABLE txx(a, b, c);
INSERT INTO txx VALUES(1, 2, 3);
CREATE VIEW vvv AS SELECT main.txx.a, txx.b, c FROM txx;
CREATE VIEW uuu AS SELECT main.one.a, one.b, c FROM txx AS one;
CREATE VIEW temp.ttt AS SELECT main.txx.a, txx.b, one.b, main.one.a FROM txx AS one, txx;
CREATE TABLE temp_capture AS SELECT name, sql FROM sqlite_temp_master WHERE name='ttt';