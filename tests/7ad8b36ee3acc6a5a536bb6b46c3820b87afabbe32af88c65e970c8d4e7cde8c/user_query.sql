PRAGMA legacy_alter_table = 1;
CREATE VIEW temp.ttt AS SELECT main.txx.a, txx.b, one.b, main.one.a FROM txx AS one, txx;
ALTER TABLE txx RENAME TO "t xx";