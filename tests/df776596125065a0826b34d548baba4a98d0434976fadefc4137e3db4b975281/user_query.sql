PRAGMA legacy_alter_table = 1;
ALTER TABLE one RENAME TO t2;
DROP VIEW v;
CREATE VIEW temp.vv AS SELECT one.a, one.b, t2.a, t2.b FROM t1 AS one, t2;
CREATE TABLE query_result AS SELECT * FROM vv;