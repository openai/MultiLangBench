PRAGMA legacy_alter_table = 1;
CREATE TABLE t3(c, d);
ALTER TABLE t3 RENAME TO t3new;
DROP TABLE t3new;